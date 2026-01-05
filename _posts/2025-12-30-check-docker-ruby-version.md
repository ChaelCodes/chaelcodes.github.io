---
title: Check Docker's Ruby version with Github Actions
category: blog
layout: post
description: When you're upgrading Ruby, it's hard to remember to update your docker image too. This GitHub Action checks if they're in sync and warns you if they arent!
feature-img: assets/img/posts/check_docker_ruby_version/Ruby-Version-GitHub-Action.png
image: assets/img/posts/check_docker_ruby_version/Ruby-Version-GitHub-Action.png
thumbnail: assets/img/posts/check_docker_ruby_version/Ruby-Version-GitHub-Action.png
excerpt_separator: <!--more-->
---
When you're upgrading Ruby, it's hard to remember to update your docker image too.
This GitHub Action checks if they're in sync and warns you if they arent!
<!--more-->

- TOC
{:toc}

Most Dockerfiles for Ruby setups start with the line `FROM ruby:3.4.7` (or your version).
This means we're using the [ruby:3.4.7](https://hub.docker.com/layers/library/ruby/3.4.7) image from DockerHub!
That's an image of Debian that comes preloaded with Ruby version 3.4.7 installed.

Because our base image already has ruby installed, we can't install the correct ruby version based on our `.ruby-version` file.
When you're upgrading Ruby, you have to remember to update the Dockerfile.
That's hard to remember when you're making a bunch of other changes to upgrade Ruby!

We're going to build a script to check if they're in sync, and then we're going to build a GitHub Action that runs whenever the `.ruby-version` file or Dockerfile is updated to run that script.
Then we can leave the remembering to the computers!

## The Script

Create a new script, mine is called `script/check_dockerfile_ruby_version.sh`.
This script will use grep to check if the Dockerfile contains the contents of `.ruby-version`.
I'm going to be checking if a Dockerfile.dev at the project's root matches.
Replace all instances of Dockerfile.dev with your Dockerfile.

```sh
#!/bin/sh

# If one instance of the ruby version in .ruby-version is found in Dockerfile.dev
# https://www.gnu.org/software/grep/manual/grep.html
if [ $(grep -cF -f .ruby-version Dockerfile.dev) != 1 ]; then
  # Get ruby image version from Dockerfile.dev
  DOCKERFILE_VERSION=$(grep -oE 'FROM ruby:([0-9\.]+)' Dockerfile.dev)
  RUBY_VERSION=$(cat .ruby-version)
  echo "\e[31mRuby version in .ruby-version, and Dockerfile.dev do not match!\e[0m"
  echo ".ruby-version: $RUBY_VERSION"
  echo "Dockerfile.dev: $DOCKERFILE_VERSION"
  echo "Please update the ruby image in Dockerfile.dev to match the .ruby-version file."
  exit 1
fi
echo "\e[32mruby version in .ruby-version and Dockerfile.dev match!\e[0m"
```

> This works for images like `ruby:3.4.7-alpine` but not ruby versions like `4.0.0-preview2`, because those use images like 4.0-rc.

### If both match
![ruby version in .ruby-version and Dockerfile.dev match!](/assets/img/posts/check_docker_ruby_version/lobsters-success.png)

### If they don't match
![Ruby version in .ruby-version, and Dockerfile.dev do not match!
.ruby-version: 4.0.0
Dockerfile.dev: FROM ruby:3.4.7
Please update the ruby image in Dockerfile.dev to match the .ruby-version file.](/assets/img/posts/check_docker_ruby_version/lobsters-failure.png)

Most importantly, this exits with a failure status, so the GitHub action will fail the pull request!

> This is a great time to stop and test the script behaves the way you expect!
> GitHub Actions is a rough test environment.

### Troubleshooting and Enhancements
If you run into issues or have a great idea, tell me about it, and I'll update this list!

#### Permission denied
```sh
bash: script/check_dockerfile_ruby_version.sh: Permission denied
```
You need permission to execute the script! This will give you permission:
```sh
chmod u+x script/check_dockerfile_ruby_version.sh
```

#### Add multiple Dockerfiles!
You can add multiple dockerfiles and increment the count to check multiple at once!
Maybe a development file and a production file?

#### Add to local CI
You can add this script to any local CI you're running or a pre-push hook.

## The GitHub Action
We're going to build a GitHub action that is triggered when there's a push to main or a pull request that modifies `.ruby-version` or `Dockerfile.dev`. It's going to call the script that we just wrote and tested.

Create a new GitHub Action workflow at `.github/workflows/check-docker-ruby-version.yml`.
Replace all references to Dockerfile.dev with your Dockerfile(s).
Check the name of the script on the last line if you renamed it in the last step.

```yaml
name: "Check Dockerfile Ruby version"

on:
  # Catch if a mismatched version is pushed to the main branch
  push:
    branches: [main]
    paths: 
      - .ruby-version
      - Dockerfile.dev
  # Check PRs that modify .ruby-version or Dockerfile.dev
  pull_request:
    paths: 
      - .ruby-version
      - Dockerfile.dev

jobs:
  check-ruby-version:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v5
      - run: script/check_dockerfile_ruby_version.sh
```

Now you have a GitHub Action that will run when .ruby-version is updated, and check that your Dockerfile matches the version in `.ruby-version`!
You'll need to merge it into main before you can test it. Actions are funny that way.

### Output
[Sample PR](https://github.com/ChaelCodes/lobsters/pull/4){:target="blank"} showing failing and successful CI runs.

#### Successful output

[![ruby version in .ruby-version and Dockerfile.dev match!](/assets/img/posts/check_docker_ruby_version/successful_output.png)](https://github.com/ChaelCodes/lobsters/actions/runs/20580982855/job/59108203916){:target="_blank"}

#### Failing output
[![Ruby version in .ruby-version, and Dockerfile.dev do not match! .ruby-version: 4.0.0 Dockerfile.dev: FROM ruby:3.4.7 Please update the ruby image in Dockerfile.dev to match the .ruby-version file. Error: Process completed with exit code 1.](/assets/img/posts/check_docker_ruby_version/failing_output.png)](https://github.com/ChaelCodes/lobsters/actions/runs/20580940141/job/59108078759){:target="_blank"}

### Troubleshooting and Enhancements
If you run into issues or have a great idea, tell me about it, and I'll update this list!

#### Add a workflow_dispatch
If you want to run this Github action manually, without satisfying the conditions, you can add a workflow_dispatch trigger.
```yml
on:
  workflow_dispatch:
  # Catch if a mismatched version is pushed to the main branch
  push:
```

## Real-life Examples

Here's a list of open-source PRs implementing this idea!
If you implement this in your project, please tell me.
One, I would love that. Two, I'll add it to this list!

- [Lobsters](https://github.com/lobsters/lobsters/pull/1843)


> Do I really need all this? Can't I just search the codebase for 3.4.7?
> 
> Well, no, you don't need this. But I tricked you into reading the whole blog post anyway!
> 
> If you don't implement it now, and you forget to update your Dockerfile next ruby upgrade,
> I get to say "I told you so" and you have to implement it then, deal?
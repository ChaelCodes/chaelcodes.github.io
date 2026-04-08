---
title: Docker and Devcontainers for Rubyists
category: blog
layout: post
description: Devcontainers give you the experience of local development with the portability of Docker! You have the freedom to run your dev environment anywhere – mac, Linux, the Cloud, or even Windows!
feature-img: assets/img/posts/check_docker_ruby_version/Ruby-Version-GitHub-Action.png
image: assets/img/posts/check_docker_ruby_version/Ruby-Version-GitHub-Action.png
thumbnail: assets/img/posts/check_docker_ruby_version/Ruby-Version-GitHub-Action.png
excerpt_separator: <!--more-->
---

# Unboxing Devcontainers and Docker

Devcontainers give you the experience of local development with the portability of Docker! You have the freedom to run your dev environment anywhere – mac, Linux, the Cloud, or even Windows!

But Docker, Docker Compose, and Devcontainers are confusing. Let's talk about what they are, how they're different, and how to configure them.
<!--more-->

# Rails 7.2 introduced devcontainers

Rails 7.2 introduced devcontainers as part of rails new.
If you run `rails-new app_name --devcontainers` or `bin/rails g devcontainer` then rails will add 3 files:
- .devcontainer/devcontainer.json
- .devcontainer/Dockerfile
- .devcontainer/compose.yaml

This is everything you need to set up a devcontainer for local development.
First we're going to talk about why you would want to use devcontainers and then we'll talk about what each of these files do and why you would want them.

# Why do I use Devcontainers?

I'm an avid open-source contributor who uses Windows.

I contribute to a lot of projects: Lobsters, RubyEvents, Mastodon, CASA, Rails, tokei, rubocop-rails, Human Essentials, vernier, forem, codethesaur.us, circulate, newrelic-ruby-agent, awesome-jekyll-plugins, number-two, wger—and those are just the PRs that merged!

These projects span different languages, Ruby versions, and system dependencies. I don’t want all of that installed locally. I don’t want to juggle environments or untangle conflicts every time I switch projects. I don't want to migrate my dev environment if I leave a project for a year. And as a contributor, I can’t just sit with a maintainer for an hour while we debug my machine.

I need to be able to set up an environment quickly, do my work, and throw it away when I'm done. That's the problem Docker solved for me. That's why I've built devcontainer setups for multiple projects, including RubyEvents and Lobsters.

## Why use devcontainers instead of local?

- Consistent setup every time
- Isolate your environment
- Isolate your Agent
- Isolate the VS Code extensions
- Throw it away and rerun if you leave the project for a year or two
- Run it in the CLOUD
- Run it on Windows?!

## Why use devcontainers instead of Docker?

- Run VS Code extensions like RubyLSP, Herb, Standardrb, Ruby Test Explorer
- No prefixing commands with docker, docker-compose, etc
- No starting up a container to bundle install

# What are these technologies and what do they do?

## Docker

Docker was a solution to a different problem.
Servers were fragile.
Deployments meant SSHing into a machine and running scripts by hand, hoping you didn’t forget a step or mutate the environment in some subtle, irreversible way.

Docker changed that. You could build a tested image and run it consistently, anywhere.
If the image worked, the deployment worked.
Hardware differences and environmental drift stopped mattering.

We had a way to build an image of a computer, and we could run it anywhere, including locally.
So some engineers decided that we could build a consistent development environment instead of a production one!

## Dockerfile
_[Documentation](https://docs.docker.com/reference/dockerfile/)_

Here is an incredibly simple `Dockerfile`.

```docker
# Pull the Ruby image from DockerHub
FROM ruby:4.0.1

# Set a directory to run commands in 
WORKDIR /app-name

# Install dependencies
RUN gem install bundler
# Copy files from directory to ./ folder
COPY Gemfile Gemfile.lock ./
# Run commands
RUN bundle install

# Default command
#   the container will start, run this command, and the container will stop when it's done
#   This command is often overwritten by Docker, Docker Compose, or the Devcontainer
CMD ["irb"]
```
> Tip: Upgrading your ruby version involves pulling from a new base image, and rebuilding the image.

### Real-world Examples
- [Rails default](https://github.com/rails/rails/blob/89657b5ccdd51773e01a054e40eaf32cd93621c2/railties/lib/rails/generators/rails/devcontainer/templates/devcontainer/Dockerfile.tt)
- [RubyEvents](https://github.com/rubyevents/rubyevents/blob/main/.devcontainer/Dockerfile)
- [Lobsters](https://github.com/lobsters/lobsters/blob/main/Dockerfile.dev)
- [MeetAnother.Day](https://github.com/ChaelCodes/MeetAnotherDay/blob/main/Dockerfile)

### Images of Computers

An image is a snapshot of a computer.

You start `FROM` an image of an operating system, or in our case, an official Ruby version image that already has Ruby installed on the OS.

Then you `RUN` commands on it, and take another snapshot.
Keep repeating this until you're done setting up the computer.
An image is just the accumulated result of a sequence of snapshots.

You can see this if you inspect the contents of the [Ruby image.](https://github.com/docker-library/ruby/blob/4f76cece88762c6df20be5dc45cb1de7a9bc3b4d/4.0/trixie/Dockerfile)

Images also define one final command: `CMD`.
This is what runs when we start a container from the image.
The container runs for as long as that command is running, and stops when it exits.

## Containers

### Volumes

When a container is destroyed, everything inside it is deleted, and you're left with the original image.
Volumes are directories that live outside the container, but are mounted inside it.
The container can read and write files there, but Docker owns the actual storage.
Volumes let you keep data when containers are disposable.
Databases can store their data in a volume, survive container restarts, and keep working as expected.

> Tip: Always name your volumes so they're easy to identify in the Docker application.

### Bind-Mounts

You don’t want to rebuild an image every time you change your application code locally. Instead, you mount your files into the container as a bind-mount, so changes are picked up immediately. In this case, you own your files, and it's a two way bind.

### Examples
At this point, if we're just using Docker, running tests looks like this:
```bash
# Running tests
docker build -t ruby-events -f .devcontainer/Dockerfile .
docker run --rm -it --mount type=bind,source=.,target=/rails \
  --mount source=node_modules,target=/rails/node_modules \
  ruby-events bin/rails test
```
This spins up a new container from your image with an interactive terminal and runs bundle exec rspec.

Running bundle install looks like this.
```bash
# Start a running container
docker run --name rubyevents-dev -d \
  --mount type=bind,source=.,target=/rails \
  --mount source=node_modules,target=/rails/node_modules \
  ruby-events

# Running bundle install
docker exec rubyevents-dev bundle install
```
This ONLY updates the container though.
Any future runs will use the image, which has the old dependencies.

Adding a new gem looks more like:
```bash
# Add Rails as a gem and update the lockfile
docker run --rm -it --mount type=bind,source=.,target=/rails \
  --mount source=node_modules,target=/rails/node_modules \
  ruby-events bundle add rails
# Ensure the gem is added to the image
docker build -t ruby-events -f .devcontainer/Dockerfile .
```

## Docker Compose
_[Documentation](https://docs.docker.com/reference/compose-file/)_

As engineers, we quickly realized that one container isn’t enough. Most apps need multiple services: a database, Redis, Selenium, Typesense, maybe more. All these containers need to run on the same network, share environment variables, and talk to each other. Plus, there’s a lot of repetitive setup: bind mounts, volumes, ports, and so on.

Docker Compose coordinates all of this and describes the full setup. That way you can start your server with one command.

### docker-compose.yml Configuration

This is the default compose.yaml from `bin/rails g devcontainer`.

```yml
name: "rails_app"

services:
  rails-app:
    build:
      context: ..
      dockerfile: .devcontainer/Dockerfile
    volumes:
      - ../../rails_app:/workspaces/rails_app:cached
    command: sleep infinity
    depends_on:
      - selenium
      - redis
  selenium:
    image: selenium/standalone-chromium
    restart: unless-stopped
  redis:
    image: valkey/valkey:8
    restart: unless-stopped
    volumes:
      - redis-data:/data

volumes:
  redis-data:
```

There's several key sections.
`services:` defines the containers that need to be spun up.
`volumes:` defines the volumes that docker needs to set up, and makes them shareable

#### Real-world Examples

- [Rails default](https://github.com/rails/rails/blob/89657b5ccdd51773e01a054e40eaf32cd93621c2/railties/lib/rails/generators/rails/devcontainer/templates/devcontainer/compose.yaml.tt)
- [RubyEvents](https://github.com/rubyevents/rubyevents/blob/main/.devcontainer/docker-compose.yml)
- [Lobsters](https://github.com/lobsters/lobsters/blob/main/docker-compose.yaml)
- [MeetAnother.Day](https://github.com/ChaelCodes/MeetAnotherDay/blob/main/.devcontainer/docker-compose.yml)

### Examples
```bash
# Running RSpec
docker compose -f .devcontainer/docker-compose.yml run --rm rails-app bin/rails test
```
Creates and runs rspec in a new container and deletes the container when complete.
You can exclude the -f if you have a docker-compose.yml in the project directory.

```bash
# Running Bundle install
docker compose -f .devcontainer/docker-compose.yml run --rm rails-app bundle install
```
But again, this only runs it on the container, which terminates when the command ends.
Any future commands will be on a new container using the old image.

If you have a container that's running, you can run it on an existing container using:
```bash
# Start a running container
docker compose -f .devcontainer/docker-compose.yml up
# Running bundle install
docker compose -f .devcontainer/docker-compose.yml exec rails-app bundle install
```
This is why we use `sleep infinity`, if we were using the server, we wouldn't be able to stop the server, run `bundle install` and restart the server.

```bash
docker compose -f .devcontainer/docker-compose.yml up --build
```
This is the actual command and it rebuild the image from scrath.

## Devcontainers

### Devcontainer configuration
_[Documentation](https://containers.dev)_


```json
{
  "name": "RubyEvents Dev",
  "dockerComposeFile": "./docker-compose.yml",
  "service": "rails-app",
  "workspaceFolder": "/rails",
  "overrideCommand": true,
  "customizations": {
    "vscode": {
      "settings": {
        "git.terminalGitEditor": true
      },
      "extensions": [
        "dbaeumer.vscode-eslint",
        "esbenp.prettier-vscode",
        "bradlc.vscode-tailwindcss",
        "testdouble.vscode-standard-ruby",
        "marcoroth.herb-lsp"
      ]
    }
  },
  "features": {
    "ghcr.io/devcontainers/features/git:1": {},
    "ghcr.io/devcontainers/features/github-cli:1": {},
    "ghcr.io/devcontainers/features/sshd:1": {}
  },
  "portsAttributes": {
    "3000": {
      "label": "Ruby Events Rails Server",
      "onAutoForward": "notify"
    },
    "3036": {
      "label": "Vite Server",
      "onAutoForward": "silent"
    }
  },
  "mounts": [
    "source=${localEnv:HOME}/.ssh,target=/home/vscode/.ssh,type=bind,consistency=cached"
  ]
}
```

#### Real-world Examples

- [Rails default](https://github.com/rails/rails/blob/89657b5ccdd51773e01a054e40eaf32cd93621c2/railties/lib/rails/generators/rails/devcontainer/templates/devcontainer/devcontainer.json.tt)
- [RubyEvents](https://github.com/rubyevents/rubyevents/blob/main/.devcontainer/devcontainer.json)
- [Lobsters](https://github.com/lobsters/lobsters/blob/main/.devcontainer/devcontainer.json)
- [MeetAnother.Day](https://github.com/ChaelCodes/MeetAnotherDay/blob/main/.devcontainer/devcontainer.json)

### Examples
```bash
# Running tests
bin/rails test
```

```bash
# Running bundle install
bundle install
```
MAGICAL!



## Quippy Wisdom

> Docker is consistent.
> At first it will consistently suck. But then, you'll keep taking people through the process, and they'll improve it.
> That's how you get a consistent AND reliable setup.

> Docker takes forever. :(
> Go make some tea!
> XKCD compiling comic
> It takes less time than debugging a broken setup script.

> Maybe local works for you, but does it work for everyone else?

> Name your volumes, otherwise they'll be incomprehensible gibberish.

> If you *copy/paste* a file, like .env, it won't be available when you run it in a codespace.

> We're okay with other software engineers struggling with a bad setup, but we'll fix it for the robots.
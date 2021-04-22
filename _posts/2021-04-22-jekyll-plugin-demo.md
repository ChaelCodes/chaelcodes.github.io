---
layout: post
title: Jekyll-Twitch Demo!
author: ChaelCodes
date: 2021-04-22 00:00:00 -0000
description: Let's build a demo website in our Jekyll-Twitch gem! This will allow us to test inside the repo, and demonstrate the plugin live to users. It'll serve as documentation, demo, and local testing environment!
feature-img: "/assets/img/posts/Jekyll-Twitch Demo.jpg"
thumbnail: "/assets/img/posts/Jekyll-Twitch Demo.jpg"
image: "/assets/img/posts/Jekyll-Twitch Demo.jpg"
tags: [ruby, jekyll, open-source, gem]
---
Let's build a simple demo website in our Jekyll-Twitch gem! This will allow us to test inside the repo, and demonstrate the plugin live to users. It'll serve as documentation, demo, and local testing environment!

> This blog is a companion guide to a [Twitch stream](https://twitch.tv/ChaelCodes) that will happen 04/23 at 15:00 UTC.

About a month ago, I created a [Jekyll](https://jekyllrb.com/) plugin called [Jekyll-Twitch](https://github.com/ChaelCodes/jekyll-twitch) that adds a Jekyll Liquid tag to a repo. This [liquid](https://shopify.github.io/liquid/) tag lets users embed a Twitch clip in their sites using only a clip url. Right now, it's difficult to test, because I have to connect it to my personal site which is in a different repo, and there's no way for potential users to see it working.

### Create a Project Site in GitHub Pages

GitHub Pages offers a really nice way to handle this! GitHub pages lets you create a documentation site inside of a git repo at /docs. This is called a [Project site], and would be hosted at `http(s)://<username>.github.io/<repository>` which would be `https://chaelcodes.github.io/jekyll-twitch`. This will allow every fork to be deployed to the contributer's account. We're gong to use the default theme to keep this as simple and lightweight as possible.

Inside the Jekyll-Twitch repo, we'll do the following:
1. Open the repo at the top-level
2. Install jekyll - `gem install jekyll`
3. Create a docs Jekyll site `jekyll new docs` This must be called docs to deploy to GitHub Pages
4. Test the site using `bundle exec jekyll serve` (use `--livereload` to see changes instantly!)
5. Create a page for each plugin.

### Create a page for each Plugin

Now we want to demonstrate the capabilities of our plugin. For Jekyll-Twitch, we have 3 Configurations: Clip, Broadcast, and VoD (Highlight), so we'll create 3 pages to demonstrate each config. We'll include the example using raw tags that let you show the liquid syntax with embedding it.
`{% raw %}{% twitch https://www.twitch.tv/chaelcodes/clip/DeterminedSweetRedpandaDoritosChip-pQiRlDz6rQ9uvuuq %}{% endraw %}`
Then we need to include the plugin as a gem. We're going to reference the gem using GitHub instead of rubygems, and reference the branch to make it easy for users to test their own branch, and test the current version on main, instead of the latest released version. We'll also put it in `jekyll_plugins`, so Jekyll knows to use it.

1. Add your gem to the `Gemfile` to the jekyll_plugins group using GitHub
```
group :jekyll_plugins do
  gem 'jekyll-twitch', 'https://github.com/sparklemotion/nokogiri.git', branch: 'main'
end
```
2. Add your plugin to Jekyll's `_config.yml`
```
plugins:
  - jekyll-twitch
```
3. Install the gem - `bundle install` inside your `/docs/` folder
4. Restart the server - `bundle exec jekyll serve` (use `--livereload` to see changes instantly!)

### Deploying the Example repo

If you tried to deploy the last site to GitHub pages using their automatic deployment, then you quickly ran into issues.

1. GitHub Pages does not support custom gems
2. GitHub Pages is stuck on Jekyll 3

That's okay though, we can deploy the site to the gh-pages branch using GitHub actions. helaili/jekyll-action@v2 supports deploying a project site to a gh-pages branch. [I've done this previously for my portfolio site.](https://www.chael.codes/2021/03/25/Deploying-with-github-actions-not-pages.html)

```
name: Build and deploy Jekyll site to GitHub Pages

on:
  push:
    branches:
      - main

jobs:
  github-pages:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: helaili/jekyll-action@v2
        with:
          jekyll_src: 'docs'
          target_branch: 'gh-pages'
          token: ${{ secrets.DEPLOY_SECRET }}
```

At this point, we should have a demo site that automatically deploys on new pushes to `main`, and works great as a testing environment!

> This blog is a companion guide to a [Twitch stream](https://twitch.tv/ChaelCodes) that will happen 04/23 at 15:00 UTC.

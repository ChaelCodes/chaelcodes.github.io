---
layout: post
title: Deploying Jekyll with GitHub Actions, not Pages
author: ChaelCodes
date: 2021-03-25 00:00:00 -0000
description: I built a Gem that embeds Twitch clips in Jekyll Sites! Unfortunately, I can't use it, because I'm deploying using github-pages. So let's change the deploy process. 😏
feature-img: "assets/img/posts/Jekyll-pages.PNG"
thumbnail: "assets/img/posts/Jekyll-pages.PNG"
image: "assets/img/posts/Jekyll-pages.PNG"
tags: [ruby, jekyll, open-source, github actions]
---

I built a [Gem](https://rubygems.org/gems/jekyll-twitch) that embeds Twitch clips in Jekyll Sites! Unfortunately, I can't use it, because I'm deploying using github-pages. So let's change the deploy process. 😏

# Why do we have to do this?
[GitHub pages](https://pages.github.com/) is where [my site](https://www.chael.codes) is hosted. They require you to add the gh-pages gem instead of the jekyll gem, and they lock the version of Jekyll at 3.9.0. They would have to rework how gh-pages interacts with GitHub servers to support Jekyll 4.0, and that would break all the 3.9 sites out there. _[They've decided not to upgrade instead.](https://github.com/github/pages-gem/issues/651)_

They also don't let you add [random plugins](https://docs.github.com/en/github/working-with-github-pages/about-github-pages-and-jekyll#plugins). Only their allow list, and [my baby Jekyll-Twitch](https://github.com/ChaelCodes/jekyll-twitch/) isn't on it.

# So, what's the plan?
Jekyll has shared a guide on [deploying using GitHub Actions](https://jekyllrb.com/docs/continuous-integration/github-actions/). We'll need a `github_pages.yml` file in `.github/workflows`. This is going to trigger every time we push to main. It'll call out to a [jekyll-action](https://github.com/helaili/jekyll-action) created by helaili which deploys the static site on the gh-pages branch. The jekyll-action deprecates [JEKYLL_PAT](https://github.com/helaili/jekyll-action#deprecation), so we should update [their docs](https://github.com/jekyll/jekyll/blob/master/docs/_docs/continuous-integration/github-actions.md) while we do this. 

There's some additional GitHub configuration necessary. First, the jekyll action needs a github token to push to the gh-pages branch, then GitHub needs to use the gh-pages branch instead of the main branch.

We'll need to include a [secret](https://docs.github.com/en/actions/reference/encrypted-secrets#creating-encrypted-secrets-for-a-repository) in our [action](https://docs.github.com/en/actions/reference/workflow-syntax-for-github-actions#jobsjob_idstepsenv) to store the github token.

[This was easier than I thought.](https://github.com/ChaelCodes/chaelcodes.github.io/pull/11)

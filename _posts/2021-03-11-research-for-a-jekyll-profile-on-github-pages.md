---
layout: post
title: Research for a Jekyll Profile on GitHub pages
author: ChaelCodes
date: 2021-03-11 00:00:00 -0000
feature-img: "assets/img/bagel.jpg"
tags: [ruby, jekyll, portfolio]
---
I have too many links and social pages. I can't even keep track of them all. What if I could store them all in one place, for free, and build the site using my favorite language? Let's build the technical plan!

> I'll be streaming it [on Twitch](https://twitch.tv/ChaelCodes?utm_source=theRelicans&utm_medium=blog&utm_campaign=friday_plan) at 15:00 UTC, March 12th, and I'll report back with everything I learned!

## Initial Requirements
I need to share my Twitter, GitHub, Twitch, TheRelicans, and Dev.To. (And [BitBurner](https://chaelcodes.netlify.com).) I also want to throw random webpages and utilities on it without thinking about hosting providers or tech stack. Then my blogs need a canonical source. I plan to cross-post to Dev.To and therelicans.com, so a blog format that can easily transfer is important. We can lorem ipsum some space with a bio too! I bought a [domain](https://chael.codes), so let's show everything there instead of chaelcodes.github.io. ❤️

## Research
First, I checked out [the Jekyll tutorial](https://jekyllrb.com/docs/step-by-step/01-setup/) to get an idea of how to build a site, and make sure it'll meet the requirements.

[Posts](https://jekyllrb.com/docs/step-by-step/08-blogging/) are markdown files stored in a _posts directory. This feels very straight-forward, and my blog posts will all be tracked via git.

[Liquids](https://jekyllrb.com/docs/step-by-step/02-liquid/) are tags used to safely embed external content in posts and pages. I've [used them before](https://www.youtube.com/watch?v=EZu4pJftF-E) with Forem (aka Dev.To). These will help with embedding Twitch and talk slides. The markdown format and Liquids mean it's easy to convert posts from Jekyll blog to Relican blog. I'll only need formatting changes for the slides and Twitch liquids.

### Jekyll Plugins
- [Rubocop-Jekyll](https://github.com/jekyll/rubocop-jekyll) will check our styles. I also want to try out Github Actions for the [automatic linter](https://docs.github.com/en/actions/guides/building-and-testing-ruby#linting-your-code) since I'm building everything in GitHub.

- [Jekyll SEO Tag](https://github.com/jekyll/jekyll-seo-tag/blob/master/docs/usage.md) - You know how Google and Twitter have descriptions when you link to them? Those come from metadata tags, and this plugin will help us set them up.

- [Type-On-Strap](https://github.com/sylhare/Type-on-Strap) I'd like a theme that's got top-level nav, because I don't have many pages to navigate between. This one is well-maintained, has over 450 stars on GitHub, and the image have a parallax effect, which I really like.

### Hosting
GitHub's documentation has an [entire section](https://docs.github.com/en/github/working-with-github-pages/setting-up-a-github-pages-site-with-jekyll) dedicated to documenting GH Pages and Jekyll. The short version is that you make a gh-pages branch, name the repo `username.github.io`, and replace the `jekyll` gem with the `github-pages` gem. Then you [configure GH pages](https://docs.github.com/en/github/working-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site#choosing-a-publishing-source) in GitHub.

### Custom Domain
Once I've got the site up, it's time to think about the domain. I picked up [chael.codes](http://chael.codes) on Namecheap, which is a fabulous domain, and right now, it's a blank page, but we can fix that! First, we'll have to [configure a CNAME on GitHub](https://docs.github.com/en/github/working-with-github-pages/managing-a-custom-domain-for-your-github-pages-site#configuring-a-subdomain), then we'll add that [new CName record](https://www.namecheap.com/support/knowledgebase/article.aspx/579/2237/which-record-type-option-should-i-choose-for-the-information-im-about-to-enter/) to NameCheap.

## Information Architecture
Plugins, tools, and deploys are all great, but they're nothing without the content! I want to keep things as simple as possible, so we're starting with only 2 pages.
- Index page contains social links and bio.
- Blog page lists all blog posts.
  - I have some [old blogs](https://chaelcodes.wordpress.com/blog/), but I'm not migrating them. They can gather dust in the internet archive, k'thanks.

I can foresee a future where I gather Twitch + Youtube + Blog content around games I'm playing, but that's the future! Not for today! (I think a Games directory with a post page for each would be cool though...)

{% twitch https://www.twitch.tv/chaelcodes/clip/NurturingEphemeralLegKreygasm-pZLTOLAGhV8sHP7Z %}

---
layout: post
title: Building Jekyll-Twitch, the gem
author: ChaelCodes
date: 2021-03-11 00:00:00 -0000
feature-img: "assets/img/website.png"
tags: [ruby, jekyll, gem, twitch]
---

I'm really happy with my new website! But I can't embed Twitch clips. In fact, no one can embed Twitch clips in Jekyll, because there's no liquid tag for it. But we can fix that, not just for us, but for everyone!

> This article is the technical plan for a stream on Friday, 3/19 where I'll create a new gem.

This project breaks down into 3 distinct problems:
- Creating a Jekyll Liquid Tag
- Embedding a Twitch Broadcast, Clip, or VOD
- Creating a Gem, and publishing it to Ruby Gems

## Creating a Jekyll Liquid Tag
Jekyll liquid tags allow you to embed user-generated content safely. You might be okay with letting your users embed youtube videos, but you don't want them executing random javascript on your website. [Liquids](https://shopify.dev/docs/themes/liquid/reference/basics) are an extensible templating library designed by Shopify. You specify a tag type, and then pass your url or id, and the tag sanitizes it and embeds the content. {% comment %}{% twitch <clip url here> %}{% endcomment %}

>#### Examples:
>[Jekyll-YouTube](https://github.com/dommmel/jekyll-youtube)
>[Jekyll-Twitter](https://github.com/rob-murray/jekyll-twitter-plugin)
>[Jekyll-Gist](https://github.com/jekyll/jekyll-gist) (This one is maintained by Jekyll)

We'll start with Jekyll's guide to [liquid tags.](https://jekyllrb.com/docs/plugins/tags/) They say we should create a `TwitchTag` class inside the `Jekyll` module, and add a render method for the embeds. We also need to register the tag, `Liquid::Template.register_tag('twitch', Jekyll::TwitchTag)`, so Jekyll knows that it can use this tag.

## Embedding a Twitch broadcast, clip, or VOD
Twitch allows you to embed clips, broadcasts, and VODs using several different [embeds](https://dev.twitch.tv/docs/embed). They require that all embeds be served over SSL, and they want to know the parent domain.

[Option 1](https://dev.twitch.tv/docs/embed/everything) - Twitch offers an embed that includes chat, login, subscription, and everything normally available on the Twitch site. Unfortunately, it serves everything through JavaScript, and requires you to embed their script on your site.

[Option 2](https://dev.twitch.tv/docs/embed/video-and-clips#non-interactive-inline-frames-for-live-streams-and-vods) - This is a simple, non-interactive iframe for Twitch that works for VODs and Livestreams. The viewer will have to continue to Twitch to follow or subscribe. This will also [work for clips](https://dev.twitch.tv/docs/embed/video-and-clips#non-interactive-iframes-for-clips) if we customize the url.

[Option 3](https://dev.twitch.tv/docs/embed/video-and-clips#interactive-frames-for-live-streams-and-vods) - This option asks you to embed the same script as option 1, but they've used the player instead of the embed. The documentation doesn't make the differences clear.

I plan to start with option 2 because it's simpler, and I need it for clips. Options 1 and 3 don't support clips.

Here's the super simple iFrame I'll be embedding. For clips, the url is: `https://clips.twitch.tv/embed?clip=<VeryLongClipTitle>&parent=streamernews.example.com`
```
<iframe
    src="https://player.twitch.tv/?<channel, video, or collection>&parent=streamernews.example.com"
    height="<height>"
    width="<width>"
    allowfullscreen="<allowfullscreen>">
</iframe>
```
I've embedded this before for Forem, so I'm looking forward to improving it.

## How to Create a Gem
We can create the gem using the same tool we use for managing versions: [Bundler.](https://bundler.io/v2.0/guides/creating_gem.html) Then, I plan to [publish it on RubyGems.](https://guides.rubygems.org/publishing/) I'm really excited about this! 

## Files I'll need
- lib/twitch_tag.rb - this is going to handle formatting and rendering the twitch embed
- lib/spec/twitch_tag_spec.rb - this is where all our tests around the twitch embed will live.

## Gems I'll use
- [RSpec](https://github.com/rspec/rspec) This is my favorite testing gem. I love how readable and well-organized the tests are.
- [RDoc](https://github.com/ruby/rdoc) We'll use this gem to document our TwitchTag.rb class.
- [Rubocop](https://github.com/rubocop/rubocop) Just for fun, let's add this one too. It'll keep our styles consistent.

None of these gems will be dependencies. I can run them exclusively in development.

## CI/CD

Let's reuse the [GitHub actions](https://github.com/ChaelCodes/chaelcodes.github.io/pull/1) from last week.
Then we'll add a new one to run RSpec, and verify that tests pass.

Once I have the entire repository set up, and the gem built, I'll want to add it to my own site.

## Adding the Gem to [chael.codes](https://www.chael.codes)
The Jekyll docs say that GitHub pages excludes gems using the `--safe` option, but they also say that you can skip that by including it in `jekyll-plugins`. Let's see if it works!

> This article is the technical plan for a stream on Friday, 3/19 where I'll create a new gem, and hopefully embed it in [chael.codes](https://www.chael.codes). You can check it out at [https://twitch.tv/ChaelCodes](https://twitch.tv/ChaelCodes?utm_source=blog&utm_medium=theRelicans&utm_campaign=DevRel).

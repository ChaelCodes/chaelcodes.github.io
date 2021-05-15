---
layout: post
title: Jekyll Talks Page
author: ChaelCodes
date: 2021-05-14 00:00:00 -0000
description: I made my first talk, Docker isn't Magic. It will not be good, because it's my first talk, but it still deserves love! Let's build a talk page on the site to highlight different talks.
feature-img: "/assets/img/posts/docker-isn't-magic.png"
thumbnail: "/assets/img/posts/docker-isn't-magic.png"
image: "/assets/img/posts/docker-isn't-magic.png"
tags: [ruby, jekyll, talks]
---
I'm giving a talk at [FutureStack](https://bit.ly/futurestack-relicans)! I want to share my new talk with people on my portfolio site, because SpeakerDeck and SlideShare cost money. I'm a developer, why do I need to pay a company and expose you to ads to share my slides?

# Requirements
I want to share as much contextual information as possible, and expose the talk in as many formats as possible. The key things I need to share are:

- Talk title
- Description of the talk
- Slides embedded in the page
- YouTube video embedded in the talk page
- Salient points summarized in text

I also want to make sure that the talk is easy to share, so we'll give it some good SEO, and a nice Twitter card.

We'll need a separate page to aggregate the talks. I want this page to be responsive, and expose the talk front page and description.

# Technical Plan - Show Page
Let's start with a plan for how to build the show page for talks. A show page will show one talk, and all its details.

## Page Type
Jekyll has three ways to create new pages on your site: Pages, Posts, and Collections.

Pages are standalone content that exists at a permalink. It's good for `/about`, `/pricing`, and `/talks` pages. If we stored talks here, then we'd have urls like `/docker-isn't-magic` and `indoor-hazards-and-plants-that-cure-them`, but we'd have to create a data structure to hold all these talks for the talks page.

Posts are used for blog posts! They're automatically added to your RSS Feed, if you have one. They must always be associated with a date, which is why they're commonly located at `/<year>/<month>/<day>/<post-title>` and must have a filename like `YEAR-MONTH-DAY-title`. If you're viewing this page at [chael.codes](https://www.chael.codes/2021-05-14-talks-page-in-jekyll.md) instead of Dev.To or the Relicans, then you're looking at a Post page. These posts are in a collection called `site.posts`. You can also assign a category (or categories) to a post. If you assign a category in the frontmatter, then you can query by that category from liquid.
{% raw %}
    {% for talk in site.categories.talk %}
        Title: {{talk.title}}
        Description: {{talk.excerpt}}
    {% endfor %}
{% endraw %}

The last type is a collection of pages. These do not need to be associated with a date, and can be queried. These do not update on the RSS Feed, but can have a separate RSS Feed. The nice part about this is that we'd be able to cut off the date part of the url.

After evaluating the options, I plan to share these as normal posts. We can use the date of the conference to release it on the date of. The date in the url is a little inconvenient, but I love the idea of sharing new talks in the RSS Feed, and I don't want to deal with the hassle of making an array for pages. The category feature will make our talks index page easy.

## Slides
I build my slides out on Google Slides, and they have [an embed](https://support.google.com/docs/answer/183965#zippy=%2Cembed-a-document-spreadsheet-or-presentation). Normally, I would be focused on turning this into a liquid embed, but I need to get this set up quick, and I don't have time before futurestack, so I'll be embedding it directly in the file.

> I didn't use slide share or speakerdeck. SpeakerDeck wants to put their branding on my slide deck unless I pay a fee. SlideShare is also trying to make money from hosting slides. Why? Why are we paying these companies money to display our own content on their site? It is because it's pretty? Why does link.tree exist? Let's build our own.

## YouTube
We'll pull in YouTube using the [Jekyll-Youtube](https://github.com/dommmel/jekyll-youtube) gem. This gives us access to a liquid tag for YouTube, so we can embed the recording of the talk.

## Talks Index Page
An index page will list all our talks. Let's build this from scratch with fresh new SCSS and LOTS of advice from chat. We'll have an image of the first slide, and then the description of the talk excerpt in a card shape. I want to use flexbox to make the list responsive.

## Sharing
Jekyll-Seo is the main gem for managing seo and sharing. We can add frontmatter to the page that will update how Twitter cards look.

```
---
description: <talk description>
image: <image of first slide>
twitter:
  card: summary-large-image
---
```

At this point, we should have two new pages, one for showing off all my talks, and another page that'll host my very first talk. <3

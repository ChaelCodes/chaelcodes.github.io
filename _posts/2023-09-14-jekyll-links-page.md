---
title: Links Page in Jekyll
layout: post
author: ChaelCodes
date: 2023-09-14 00:00:00 -0000
description: 
excerpt_separator: <!--more-->
published: true
thumbnail: /assets/img/posts/git_patch_add/patchAddOptions.PNG
image: /assets/img/posts/git_patch_add/patchAddOptions.PNG
feature-img: /assets/img/posts/git_patch_add/patchAddOptions.PNG
twitter:
  card: summary_large_image
---
As a content creator, I love the look and feel of "link in bio" pages.
They're such an easy and mobile-friendly way to share various social medias and projects.
However, as a developer, I am frankly offended at the idea of needing a SAAS app to create a static page of links.
The idea of _paying_ for such a service, or sharing *my* page with their branding is simply abhorrent.
Thankfully I have a Jekyll site and the ability to create `<a>` tags, so I'm able to avoid that dismal fate.❤️
<!--more-->

## Step 1 - Create a links page
Let's create a new page in the `/pages` folder called links.html. We want html, because we're going to be adding a lot of customizations.
```frontmatter
---
title: Links
description: Social media and helpful links for ChaelCodes!
permalink: /links/
hide: true
---
```
We want a title for the tab title when it's viewed in a browser. I'm happy with "Links" even though it's not very descriptive.
The description is what'll show up in link previews on other sites.
Our permalink will be the link they access. In my case it'll look like [chael.codes/links/](https://www.chael.codes/links) which is very slick.
<summary>My theme - type-on-strap - hides pages from the navbar with the frontmatter tag <code>hide: true</code>.</summary>
<details>
Inside the navbar there's <a href="https://github.com/sylhare/Type-on-Strap/blob/ed32cecbf56d58810f1d3883290b9ac091d78cb8/_includes/default/navbar.liquid#L25-L36">some custom code</a> to hide certain site pages.

For Minima, this functionality is missing, and it'd need to be added to the <a href="https://github.com/jekyll/minima/blob/master/_includes/header.html">header</a>.
Check your theme to understand if there are built in options for hiding pages from the navigation.
</details>
We didn't define a layout, which means our page won't have a header, footer, nor navigation, which is what we want!
At this point, we have a blank page.
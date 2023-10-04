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

## Step 2 - Strip out navigation and footer

Chances are high that your default layout has a header and footer. We need to make a new layout called "empty" to strip those out. We still want all the meta info that's in your head - this controls livereload, fonts, scss styling (which we'll add later), and more!

```html
<!DOCTYPE html>
<html lang="en">
  {% include default/head.liquid %}
  <body>
    {{ content }}
  </body>
</html>
```

```frontmatter
---
title: Links
description: Social media and helpful links for ChaelCodes!
permalink: /links/
layout: empty
hide: true
---
```

## Step 3 - Define social links
Jekyll supports collections which are site data stored in yml files. These are parsed by Jekyll and make it easy to iterate over structured data.

```yml
links:
  - title: Twitch
    link: https://twitch.tv/ChaelCodes
    icon: fa-twitch
  - title: YouTube
    link: https://youtube.com/c/ChaelCodes
    icon: fa-youtube
  - title: GitHub
    link: https://github.com/ChaelCodes
    icon: fa-github
```
You can easily add and remove links by modifying the yml file, and there's less danger of introducing mistakes due to copy/pasting.
My site theme supports font awesome icons, which is why mine are all `fa-github` but obviously, you can use the icon library of your choice.

## Step 3 - MAKE SOME LINKS
LET'S ADD SOME `<a>` TAGS!
```html
{% raw %}
<ul>
{% for social in site.data.social.links %}
  <li>
    <a href="{{social.link}}">{{social.title}}</a>
  </li>
{% endfor %}
</ul>
{% endraw %}
```

IT'S MAGNIFICENT!

<img src="/assets/img/posts/links-page/newlinkspage.PNG" alt="Perfectly legible list of bullet-pointed links that your screenreader would love." />

We're done! Everyone can access my links now! 🙌

## Step 4 - Add some _buttons_

We're going to add an id to that ul to isolate it from other content on our site, then we'll create an scss file - links.scss for our styling!

<summary>Make sure to import this new file in your theme's main scss file.</summary>
<details>Mine uses _custom.scss to add additional files and styling.
<pre>
  <code>
    @import 'pages/links';
  </code>
</pre>
</details>

```html
<ul id="links">
```

```scss
/* --- links page styling -- */
#links {
  list-style-type: none;
  margin-left: 0em;
  font-family: $font-family-headings; // override text to use heading text instead of body

  li {
    a {
      display: block;
      margin: 1em 2em;
      padding: $padding-small;
      text-align: center;
      background-color: var(--vivid-color-1);
      color: white;
    }
  }
}
```

It's plain, but not we have a links page with a list of buttons!

<img src="/assets/img/posts/links-page/buttons.PNG" alt="Bullet pointed links have been turned into a list of rectangular buttons with no bullet point styling." />

## Step 5 - Add a friendly face to the links page
I think it's really helpful to give people a little greeting and show them your avatar to reassure them that they've ended up on the right page.

```html
  <div id="links-profile">
    <img id="avatar" src="/assets/img/profile_pic.jpg" alt="profile pic of Chael smiling and wearing fib shawl"/>
    <p>To be honest, I can't keep track of all the places I'm active either.</p>
  </div>
```

```scss
  #links-profile {
    #avatar {
      border-radius: 50%;
      border: .2em solid var(--vivid-color-2);
      width: 50%;
      margin: 1em auto;
      display: block;
      padding: 0;
    }

    p {
      text-align: center;
    }
  }

```
This is probably enough, right?
<img src="/assets/img/posts/links-page/profile_pic_link_page.PNG" alt="Avatar with a little blue circle has been added to the top of the page, and the text 'To be honest, I can't keep track of all the places I'm active either.'">

## Step 6 - Fix desktop view
Let's just pop into desktop view for a fun screenshot!
<img src="/assets/img/posts/links-page/desktop_view_2.PNG" alt="Giant picture of my avatar that fills the entire screen.">
Huh. It's just my face.

That's not ideal.
<img src="/assets/img/posts/links-page/desktop_view_2.PNG" alt="Giant buttons that are perfectly legible to a screenreader, but have tiny unreadable text.">
The buttons aren't much better. We've only got 5 on the page.

Let's give this page a maximum width and center it!
```html
{% raw %}
<div class="column">
  <div id="links-profile">
    <img id="avatar" src="/assets/img/profile_pic.jpg" alt="profile pic of Chael smiling and wearing fib shawl"/>
    <p>To be honest, I can't keep track of all the places I'm active either.</p>
  </div>
  <ul id="links">
    {% for social in site.data.social.links %}
      <li>
        <a href="{{social.link}}">{{social.title}}</a>
      </li>
    {% endfor %}
  </ul>
</div>
{% endraw %}
```
```scss
.column {
  max-width: 500px;
  margin: 0 auto;
}
```
And now we have a perfectly functional and pleasant links page built in Jekyll!

<img src="/assets/img/posts/links-page/basic_links_page.PNG">

## Step ∞ - Entirely Unnecessary Futzing to impress other developers
These are all going to be links to commits. You can see the result on my [links page.](/links)
### Add Icons

### Gradient Background to add Definition to Column


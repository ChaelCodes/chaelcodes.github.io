---
title: Tropical on Rails 2026
category: blog
description: Tropical on Rails 2026 was April 9th and 10th in Sao Paulo. I've been wanting to go since 2024, so I had incredibly high expectations and they were all exceeded! The energy was incredible! Everyone was warm and friendly. The event itself was extraordinarily well organized and produced. The line-up was great, but the best part was meeting people - old friends and new ones!
feature-img: /assets/img/posts/tropical-on-rails-2026/hero.jpg
image: /assets/img/posts/tropical-on-rails-2026/hero.jpg
layout: post
thumbnail: /assets/img/posts/tropical-on-rails-2026/hero.jpg
excerpt_separator: <!--more-->
galleries:
  keynote_talk:
    id: keynote-talk
    images:
      - src: /assets/img/posts/tropical-on-rails-2026/keynote-1.jpg
        alt: "Keynote speaker on stage with a tropical backdrop."
      - src: /assets/img/posts/tropical-on-rails-2026/keynote-2.jpg
        alt: "Audience enjoying the keynote in a sunny venue."
  speaker_one_talk:
    id: speaker-one-talk
    images:
      - src: /assets/img/posts/tropical-on-rails-2026/speaker1-1.jpg
        alt: "Speaker One presenting with palm trees in the background."
  speaker_two_talk:
    id: speaker-two-talk
    images:
      - src: /assets/img/posts/tropical-on-rails-2026/speaker2-1.jpg
        alt: "Speaker Two engaging the audience."
---

[Tropical on Rails 2026](https://www.tropicalonrails.com/) was April 9th and 10th in Sao Paulo. I've been wanting to go since 2024, so I had incredibly high expectations and they were all exceeded! The energy was incredible! Everyone was warm and friendly. The event itself was extraordinarily well organized and produced. The line-up was great, but the best part was meeting people - old friends and new ones!

<!--more-->

- TOC
{:toc}

## The Conference Experience

I knew I wanted to go to [Tropical on Rails](https://www.tropicalonrails.com/) since their triumphant return in 2024 with [Tropical.rb.](https://www.rubyevents.org/events/tropicalrb-2024) For the first edition, I applied for the CFP, and planned to buy a ticket if I didn't get in (and I didn't) but they had completely sold out by the time speaker notifications went out. For the [second edition](https://www.rubyevents.org/events/tropical-on-rails-2025), I was 6 months pregnant, and not feeling international travel. The tickets for that one sold out very quickly as well, in a few days if I remember correctly.

I have friends in Brazil - old co-workers, twitch chatters, and conference buddies - and I _really_ wanted to go see them. Brazil is the 4th most common country for my Twitch viewers, and I know this, without the stats, because they'll introduce themselves as "Hi, I'm <name>! I'm from Brazil."

![Viewers by Country since January – Brazil is 4th at 6%](/assets/img/posts/tropical-on-rails-2026/Twitch_by_Country.png)
_Viewers by Country since January – Brazil is 4th at 6%_

So when the tickets for 2026 released, I was desperate for one. They dropped right when my stream began on Sunday. I spent the first 20 minutes of stream frantically trying to buy one while my credit cards declined a foreign transaction. Between Cirdes and Chase bank, I managed to secure a ticket despite my initial panic.

Ultimately, all that panic and desperation was unnecessary, because my talk was accepted! :sparkles:

Tropical exceeded all my expectations - for an idea of what it was like, see these videos from Day 1 and Day 2 of the event.

{% youtube qP3WxqwIpjU %}

{% youtube RHsRJ7fQvqM %}

## The Talks

Tropical on Rails was a single-track conference, roughly 700 attendees at every talk, so everyone had the same context during the breaks.
It was an intense schedule with about 10 minutes between talks, and a long lunch and coffee break in the afternoon.
Talks were in english and brazilian portuguese.
They had translation headsets available so the talks were all live-translated, which I appreciated - Cirdes and Wagner wrapped up the previous talk and introduced the next one over the 10 minute break entirely in portuguese.

<translation headset photo>

I didn't catch all the talks, and I didn't have my translation headset the whole time - so this is a subset of talks I attended, understood, and enjoyed.

### Conference Talks (April 9–10, 2026)

#### Keynote: Your Views Deserve a Grammar
**Marco Roth**
> Rails has always been the "batteries included" framework, but the view layer never got the same treatment. HTML+ERB has been loosely defined for 20 years. What happens when you give it a proper grammar? You get a parser, a toolchain, and eventually, reactivity.

This was more philosophical take than prior talks on Herb that I've seen. In particular, I appreciated his views on how the expectations of modern programming languages have evolved.

*📺 Recording will be available at [RubyEvents](https://www.rubyevents.org/talks/keynote-your-views-deserve-a-grammar)*

#### Unboxing Devcontainers and Docker for Rubyists
**Rachael Wright-Munn**
> Rachael has been streaming open-source contributions and programming games on Twitch since 2019. As an avid open-source contributor, she often uses docker and devcontainer setups to facilitate dev setup. Recently, she contributed devcontainer setups for RubyEvents and Lobsters.

This talk was born out a conversation on a [PR in Lobsters](https://github.com/lobsters/lobsters/pull/1796). Pushcx had some questions about all the files involved in setting up a devcontainer and what they did. By the time I was done writing out the answers, I realized I had something to teach. I'm not actually a Docker expert, and I don't particularly enjoy debugging docker containers, but I understand the fundamentals, and after writing this talk, a bit more than that. It has a [companion blog post](/blog/2026/04/08/docker-and-devcontainers.html) for any who are interested.

*📺 Recording will be available at [RubyEvents](https://www.rubyevents.org/talks/unboxing-devcontainers-and-docker-for-rubyists)*

#### What Works (and What Doesn't) with ActiveRecord::Tenanted and SQLite
**Miguel Marcondes Filho**
> I am Miguel, a Technology Leader and contributor to Node.js/Node-API and ActiveRecord::Tenanted with Fullstack experience in React, TypeScript, Node.js, Ruby, and C++. I am passionate about open source and actively contribute to the tools I use daily.

Honestly, I think most SAAS apps should be tenanted. Most of the data is grouped by account and not shared. But it's a painful migration, and I think it's something you have to think about when architecting the application. This was a helpful reminder of tenant solutions and overview of how they work.

*📺 Recording will be available at [RubyEvents](https://www.rubyevents.org/talks/what-works-and-what-doesn-t-with-activerecord-tenanted-and-sqlite)*

#### Overreacting – from React to Hotwire
**Igor Aleksandrov**
> I am Igor Aleksandrov, CTO and co-founder of JetRockets, a Rails agency in NYC, and technical leader of SafariPortal. With over 20 years of experience in development and leadership, I believe in choosing simple technology that really works, and I have experienced the complexity of both sides to prove it.

I saw the previous iteration of this talk at [XO Ruby Atlanta](https://www.chael.codes/blog/2025/09/13/xo-ruby-atlanta.html#overreacting-from-react-to-hotwire), but this was a pretty big overhaul including the new componant library they've built in Hotwire!

*📺 Recording will be available at [RubyEvents](https://www.rubyevents.org/talks/overreacting-from-react-to-hotwire-tropical-on-rails-2026)*

#### Passkey Authentication on Rails
**Braulio Martinez**
> Ruby fan since 2010. Advocate of OSS. Co-author and maintainer of webauthn-ruby. Proud father of 2 children. Former BJJ practitioner.

This was a solid overview of building passkey authentication into Rails. Really helpful for anyone trying to implement passkeys in Rails!

*📺 Recording will be available at [RubyEvents](https://www.rubyevents.org/talks/passkey-authentication-on-rails)*

#### Keynote by Adrianna Chang
**Adrianna Chang**
> Adrianna is a Staff Engineer at Shopify, a Rails Issues team member, and the meetup organizer for the WNB.rb community. She lives in Ottawa, Canada's capital, with her husband and Rottweiler, Jasper. Outside of work, she loves spending time outdoors and racing in triathlons.

I've been playing around with the new error reporters, and so I really appreciated learning about the history and how the new structured event reporting has been built. Adrianna did a fantastic job connecting the dots between past challenges and the final result!

*📺 Recording will be available at [RubyEvents](https://www.rubyevents.org/talks/keynote-by-adrianna-chang)*

#### Privacy on Rails - pragmatically complying to data protection laws
**Talysson de Oliveira Cassiano**
> After more than a decade in the software world, I have learned that most difficult problems are not about code, but rather about decisions, trade-offs, and how we learn as a team. I like to question assumptions and share ideas that help people build software more consciously and responsibly.

This was one of my favorites! Too often we forget about legal compliance, and this has been a topic on my mind lately. Talysson did a great job explaining the underlying concepts and implmentation of GDPR!

*📺 Recording will be available at [RubyEvents](https://www.rubyevents.org/talks/privacy-on-rails-pragmatically-complying-to-data-protection-laws)*

#### Reordering items at scale: From O(n) to O(1)
**Ignacio Chiazzo Cardarello**
> Ignacio Chiazzo Cardarello is a Staff Software Engineer at Shopify. He is passionate about building scalable systems and entrepreneurship. Outside of work, Ignacio enjoys running and playing soccer.

I really loved this talk! Ordering and reordering items is an incredibly common problem, but Ignacio got super in-depth. I was sitting on the edge of my seat whispering "decimals? decimals. decimals, right?" when he unveiled "a | 1234" as a sorting standard. Delightful!

*📺 Recording will be available at [RubyEvents](https://www.rubyevents.org/talks/reordering-items-at-scale-from-o-n-to-o-1)*

#### Lightning Talks ⚡
> A series of short talks by various speakers covering a range of topics related to Ruby on Rails and software development.


*📺 Recording will be available at [RubyEvents](https://www.rubyevents.org/talks/lightning-talks-tropical-on-rails-2026)*

#### Production Data Doesn't Have to Be Scary
**Matheus Richard**
> I am Matheus Richard, a senior developer 🇧🇷 at thoughtbot! I love playing guitar, gaming, and building interpreters. From day one, Ruby "made sense" to me. Almost 10 years later, I still feel joy every time I use it.


*📺 Recording will be available at [RubyEvents](https://www.rubyevents.org/talks/production-data-doesn-t-have-to-be-scary)*

#### Generators Are APIs: Designing Better DX in Rails
**Rafael Peña-Azar**
> Senior software engineer with over a decade of experience building and scaling Rails-based systems for startups and international teams. Founder of Ruby Santa Marta. Actively engaged with the Ruby community.

Recently, I've been doing a lot of work with generators in RubyEvents, so I really appreciated this overview and exploration. I picked up a few new ideas around outputting changes too!

*📺 Recording will be available at [RubyEvents](https://www.rubyevents.org/talks/generators-are-apis-designing-better-dx-in-rails)*

#### MCP & OAuth on Rails Building a Production-Ready AI App
**Paweł Strzałkowski**
> CTO, consultant and full-stack developer since the 90s. Author of many articles showcasing a creative approach to using Rails. Currently excited about the potential of AI and cross-tech discoveries. Frequent speaker at conferences/meetups and a strong supporter of the European Ruby scene. Creates games for fun.

I've been setting up MCPs at work and the name - Model Context Protocol - was familiar to me. The first few minutes taught me that I understood how to use them, but not how they worked under the hood. I deeply appreciate the blend of theoretical and practical!

*📺 Recording will be available at [RubyEvents](https://www.rubyevents.org/talks/mcp-oauth-on-rails-building-a-production-ready-ai-app)*

#### Keynote by Vladimir Dementyev
**Vladimir Dementyev**
> My name is Vladimir (or Вова), I am a mathematician and software developer passionate about open source technologies.


*📺 Recording will be available at [RubyEvents](https://www.rubyevents.org/talks/keynote-by-vladimir-dementyev)*

{% include gallery.html gallery=page.galleries.vladimir_dementyev_talk %}

## Ruby Friends

The best part of any conference is the people!



## Final Thoughts

Tropical on Rails 2026 was an unforgettable experience. Huge thanks to the organizers, sponsors, and everyone who made it possible. If you get a chance to attend a future event, don’t miss it!

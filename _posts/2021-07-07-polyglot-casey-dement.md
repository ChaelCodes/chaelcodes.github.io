---
title: "Software Architecture: Different vs Wrong with Casey Dement"
category: podcast
description: An interview with Chief Architect with Rex on what it takes to be an architect and what the job entails.
feature-img: /assets/img/podcasts/caseydement_polyglot.jpg
image: /assets/img/podcasts/caseydement_polyglot.jpg
layout: post
thumbnail: /assets/img/podcasts/caseydement_polyglot.jpg
podcast_url: https://www.therelicans.com/mandymoore/software-architecture-different-vs-wrong-with-casey-dement-190b
---
I met Casey at one of my previous jobs and admire the way he designs systems and discusses architecture. He's a long-time software architect who has been designing solutions for businesses of all sizes for 26 years. I've always wanted to be a software architect, but the timing has never worked out. This was a really fun podcast though! Casey has a bunch of great stories to share about designing systems, unintended advertising side effects, and technology hottakes!

> Casey: All the time. Pretty much any time you try to take the initiative and do something new and cool, there's always going to be lots of unintended consequences.

>Rachael: One of the challenges of having power is the fact that you are not the person who is doing the thing. It's really easy to tell a computer, "I would like you to do this thing, go do this thing." And it'll do exactly what you told it to do. If you tell a person that, you can hope that what they bring back to you is that thing, [...]But at the end of the day, you can't make them do that thing. You can just repeatedly tell them over and over and over again, "I would like you to do this thing. Please do this thing in the way that I have drawn out in the pretty diagram."
>
> Casey: Well, and so much of it is there's some perspective that you have because you're looking at a certain set of concerns, and there's some perspective they have because they're looking at a certain set of concerns. And I take it as a given that two bright people looking at the same set of information will come to reasonably compatible conclusions.

> Casey: And when they go out and build their piece of it, it all fits together. Legos don't work if one person is making bricks with circles and another one's making bricks with squares.

## Technology Review
> Casey: Yep. Rust is interesting. Rust is a language that can give you the low-level capabilities and performance of C or C++ without the existential threat to your life that comes from choosing to use C as the programming language that you're going to work in because C is the language where you can make a very, very small hard-to-find mistake that allows national security to be undermined.

> Casey: I've actually found that I get a really good advantage out of coupling MongoDB and a relational database together and representing the actual structured, detailed objects in Mongo and then putting the relationships between things in the relational database. And then, I do my queries in the relational database, get back a list of the objects that I need, then go fetch those objects from Mongo, and use those to populate whatever interface or interaction I'm dealing with.

> Casey: So I'll answer that question this way, the Weather Channel originally was built on top of Oracle. They were paying a lot of money to Oracle and had full Oracle enterprise support. And The Weather Channel dumped Oracle and went to MySQL. Ironically, Oracle later bought MySQL. What they found is that when they had a problem with the database, and they were dealing with the MySQL open-source community, the level of expertise that they could access and the rapidity, the latency with which they would get responses back was much better than what they were getting paying Oracle for expert support.

I have to stop now. I want to quote this whole podcast!

<a href="{{page.podcast_url}}" rel="noopener noreferrer" target="_blank">Listen to the Podcast</a>

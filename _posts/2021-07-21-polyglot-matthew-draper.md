---
title: "Stepping In, Contributing, and Reveling in Open Source with Matthew Draper"
category: podcast
description: Matthewd is one of my favorite people, and I was so grateful to have the opportunity to pick his brain about open-source maintainership for both Rails and Gel!
feature-img: /assets/img/podcasts/matthewd_polyglot.PNG
image: /assets/img/podcasts/matthewd_polyglot.PNG
layout: post
thumbnail: /assets/img/podcasts/matthewd_polyglot.PNG
podcast_url: https://www.therelicans.com/polyglot/stepping-in-contributing-and-reveling-in-open-source-with-matthew-draper
excerpt_separator: <!--more-->
---
Hello, everyone, and welcome to the Polyglot. Today I'm speaking with Matthew Draper who is a Principal Engineer at Buildkite as well as a long-time contributor to Ruby on Rails and a member of the Rails Core team. Hi, Matthew, and welcome.
<!--more-->

- https://github.com/matthewd/
- https://md.dev
- https://gel.dev/
- https://github.com/gel-rb/gel

> This podcast was released 07/21/2021 as part of the Polyglot Podcast - a series from The New Relic Relicans - both the series and team that created it have been dismantled. It was so much fun while it lasted, and I've recovered as much as possible from the Internet Archive.
>
> Huge Thanks to [Mandy Moore](https://mandymoore.tech/) who produced, edited, and put untold hours into this podcast. Without her work, the transcripts below (and episodes themselves) wouldn't have existed.

## Listen to the Podcast!
<audio controls>
  <source src="https://web.archive.org/web/20210721133205im_/https://episodes.buzzsprout.com/y96h5wlv2pdzzqplkva05abmemd1" type="audio/mpeg" />
  Your browser doesn't support html5 audio tags. :(
</audio>

## Teaser

> Matthew: To me personally, those constraints are largely what makes it fun. I feel that I thrive in codebases where I have a lot of constraints where you can't break this, or this, or this, or this, but let's make it do this new thing. And sometimes, those can be small changes. Sometimes you can find a way to make a large underlying change while maintaining as much as possible of the API that people are able to see and use.
>
> Rachael: So it's the challenge of it. It's the ultimate challenge.
>
> Matthew: Yeah.
>
> Rachael: Do you think that challenge is enough to sustain open source in its current form?
>
> Matthew: I like to think so. I like to think that there's always a new crop of people who are interested in stepping in, contributing, and reveling in that challenge for a while.
>
> Rachael: I love this. Normally when we talk about open source sustainability, what I tend to hear from people and companies is, "Oh, we need to put money in it. There isn't enough." And you're like, no, it's the fun, it's the joy, it's the challenge. That's why people will keep doing it.
>
> Matthew: Yeah, I'm less keen on trying to solve it with money personally, mostly because I do already get paid to do software development in my day job. And the open-source work that I do sometimes overlaps with that day job. But otherwise, I always put it to people that my hobby looks a lot like my work to anyone looking over my shoulder, but in my head, they feel very different. And I feel that when you introduce money into the hobby, things get very complicated because firstly, now it is your work. And secondly, you are now most likely in a gulf in between I'm doing this for free as a passion project, and this is paying me enough to sustain me as a real job. And so, I don't want to work on an open-source project for a relatively small amount of money based on whatever some people want to donate. I feel that that gets risky because then the people who are donating start feeling more entitled because they've paid for a service, and they expect to receive what they imagined they were paying for.
>
> Rachael: That's a really good point. I've never really thought about that before. But if you're taking a relatively small amount and you're giving that to an open-source contributor, essentially, you're saying, "The work that you are doing is worth this amount," and that amount is significantly less than you would pay for a standard software developer at any sort of company. But if it's free, then it's clear that they're doing it for the passion.
>
> Matthew: Yeah, to me, it's a real separating line. As soon as you cross that threshold, things change.

## [Full Transcript](https://web.archive.org/web/20220706132644/https://www.therelicans.com/mandymoore/stepping-in-contributing-and-reveling-in-open-source-with-matthew-draper-1lim)

Jonan Scheffler: Hello and welcome to Polyglot, proudly brought to you by New Relic's developer relations team, The Relicans. Polyglot is about software design. It's about looking beyond languages to the patterns and methods that we as developers use to do our best work. You can join us every week to hear from developers who have stories to share about what has worked for them and may have some opinions about how best to write quality software. We may not always agree, but we are certainly going to have fun, and we will always do our best to level up together. You can find the show notes for this episode and all of The Relicans podcasts on developer.newrelic.com/podcasts. Thank you so much for joining us. Enjoy the show.

Rachael Wright-Munn: Hello, everyone, and welcome to the Polyglot. Today I'm speaking with Matthew Draper who is a Principal Engineer at Buildkite as well as a long-time contributor to Ruby on Rails and a member of the Rails Core team. Hi, Matthew, and welcome.

Matthew Draper: Hi. Thanks. Glad to be here.

Rachael: What I wanted to ask you about first is some of your prior contributions to Rails Core and how you really got started with the team.

Matthew: Sure. I kind of cheated in getting onto the team.

Rachael: [laughs]

Matthew: I had previously worked on another open-source project with Aaron Patterson. So we then met up at a conference, and I just started firing thoughts and opinions at him about what Rails should be doing in various areas. And he just sort of nudged me towards, "Well, how about you just fix it?"

Rachael: [laughs] That's the blessing and the curse of open source is somebody saying, "Well, why don't you fix it?" What open-source project did you work on before this?

Matthew: We worked together on a Ruby library that executed JavaScript using the SpiderMonkey JavaScript framework from Mozilla.

Rachael: Oh, okay. So what was that called?

Matthew: It was called Johnson.

Rachael: Okay, sounds interesting. The next thing I wanted to ask about was what were some of those opinions, and what did you want to change about Rails when you first saw it?

Matthew: I was already using it at work at the time. And so there were specific issues around ActiveRecord connection management and particularly the thread-safety I think, and the way that it behaved if a thread up and died in the middle of a request. At the time, there was a risk that the connection pool would leak the connection, and so you would slowly bleed connections into the ether.

Rachael: That's a really big performance application because if I understand correctly, connection pooling is in ActiveRecord how you ensure that you're not constantly remaking the connection with the database, which is one of the most expensive calls when you're connecting to the database, right?

Matthew: Yeah, absolutely. But yeah, the danger of a connection pool, if you have a fixed size pool, is that if you start misplacing those connections, then you reach a point where you have no valid connections left, and your rules say, "You're not allowed to make any more."

Rachael: That's interesting. That's really, really cool. Can I ask you a little bit about what that work looks like on the Rails Core team? How much of it is PR review? How much of it is commits, and does that change between different members?

Matthew: Yeah, I think I would say that it changes between different members. And over time, if you have a particular interest in the moment, then you might spend more time just making relevant changes other times, and particularly some people…Rafael is a PR review machine, just really good at consistently reviewing incoming PRs.

Rachael: That's interesting. I wanted to ask about this. So in open source, there's kind of a balance between allowing new PRs and maintaining the stability of the codebase and then also ensuring that you're...basically, you have a lot of people who are very enthusiastic and who are new to the codebase, and they want to make changes to it. And sometimes, those changes can have a lot of unforeseen consequences but seem fine on the surface. How do you go about finding out what those are and hitting the right balance with your PR reviews so that you're not discouraging new contributors, but also you're not making a bunch of dangerous changes to the codebase that could have a lot of implications for all of the many people who rely on Rails?

Matthew: Very carefully and often poorly.

Rachael: [laughs]

Matthew: It is a real challenge, especially in something like Rails, which is a fairly established project at this point. Most things that you might change someone is going to be relying on, and equally, unless you're in brand new feature code, most of the time, the code that someone is proposing to change has been there for a long time. And a lot of people have been successful using it in its current form. So I think there is a potentially good but also sometimes troublesome tendency towards classification where the fact that this part of the project has worked like this for a decade means it should probably stay like that.

Rachael: That's a really good point, especially because there are so many...I think we actually ran into one of these recently when we were talking about...there's this interesting thing where if you pass ids, like if you pass a relationships attribute ids before you pass nested attributes, then the nested attributes behaves the way you would expect. But if you reverse it and pass the ids afterwards, it wipes out the changes. And I think we were talking a little bit about if we attempted to reorder those, that could impact anybody who's relying on the ways Rails works currently and orders those. How do you deal with major breaking changes and things like that? I mean, obviously, there's some communication, and you can say, "Hey, we're doing this upgrade. We're changing this."

Matthew: Yeah, we have a rolling deprecation policy; I suppose in that we avoid as much as possible having had major version equals breaking changes type-changes. Though, if you have to make a breaking change, that's when you do it, but otherwise, we roll on our minor versions, and we use deprecation messages for as many changes as we possibly can, which also influences the sorts of changes that we are more or less reluctant to make. With a deprecation warning, you can handle, "Hey, you're calling this method, and we want to make it go away or rename it," which is fundamentally the same thing. Or, "Hey, you're passing an old set of parameters. This method now wants to receive a differently shaped set of parameters," but we can't do anything about return values; they’re the big scary one. In order to change the return value of something, we can't detect what the caller is expecting. So the only way to do that is by renaming the method at the same time, which creates a series of several deprecations as we move the old method out of the way, move a new method in place, and then try to get people to switch to the new method.

Rachael: That's very clever. I hadn't thought about that. When you said changing the return value is very dangerous because we don't know what the caller is expecting, and you followed that up with so we just rename it, that's a very good way of getting around that issue and having those series of deprecations.

Matthew: Yeah. It gives us a path to do it, but it's a multi-step process, which both means it's a multi-year process because it has to happen over several releases. And anyone calling that method has to change their code multiple times, which generally makes quite unhappy people, so we try to avoid doing that.

Rachael: [laughs] We've got unhappy people. We've got challenging PR requests. It's a lot of work thinking through all of the kind of downstream changes that you were...what you think is a minor change could impact why do we build these?

Matthew: It's fun.

Rachael: It's fun?

Matthew: It's fun.

Rachael: [laughs]

Matthew: To me personally, those constraints are largely what makes it fun. I feel that I thrive in codebases where I have a lot of constraints where you can't break this, or this, or this, or this, but let's make it do this new thing. And sometimes, those can be small changes. Sometimes you can find a way to make a large underlying change while maintaining as much as possible of the API that people are able to see and use.

Rachael: So it's the challenge of it. It's the ultimate challenge.

Matthew: Yeah.

Rachael: Do you think that challenge is enough to sustain open source in its current form?

Matthew: I like to think so. I like to think that there's always a new crop of people who are interested in stepping in, contributing, and reveling in that challenge for a while.

Rachael: I love this. Normally when we talk about open source sustainability, what I tend to hear from people and companies is, "Oh, we need to put money in it. There isn't enough." And you're like, no, it's the fun, it's the joy, it's the challenge. That's why people will keep doing it.

Matthew: Yeah, I'm less keen on trying to solve it with money personally, mostly because I do already get paid to do software development in my day job. And the open-source work that I do sometimes overlaps with that day job. But otherwise, I always put it to people that my hobby looks a lot like my work to anyone looking over my shoulder, but in my head, they feel very different. And I feel that when you introduce money into the hobby, things get very complicated because firstly, now it is your work. And secondly, you are now most likely in a gulf in between I'm doing this for free as a passion project, and this is paying me enough to sustain me as a real job. And so, I don't want to work on an open-source project for a relatively small amount of money based on whatever some people want to donate. I feel that that gets risky because then the people who are donating start feeling more entitled because they've paid for a service, and they expect to receive what they imagined they were paying for.

Rachael: That's a really good point. I've never really thought about that before. But if you're taking a relatively small amount and you're giving that to an open-source contributor, essentially, you're saying, "The work that you are doing is worth this amount," and that amount is significantly less than you would pay for a standard software developer at any sort of company. But if it's free, then it's clear that they're doing it for the passion.

Matthew: Yeah, to me, it's a real separating line. As soon as you cross that threshold, things change.

Rachael: That's really interesting. Can you tell me a little bit about some of the...I'm going to just completely pivot here like back to Rails and back to some of the things that you've accomplished with it. What are some of the things that you have built and changed in Rails in the past, and why was it necessary? We talked a little bit about the connection pooling before.

Matthew: Sure. So another one that I worked on for a while was thread-safe application reloading.

Rachael: I'm seeing a trend here. (Transcription note: "I'm seeing a common thread here." The pun was right there!)

Matthew: It's an interesting challenge. [laughs] At the time, Rails development mode supported reloading of your application but couldn't run in multithreaded mode. In order to handle multiple requests at the same time in development mode, you had to turn off application reloading because Ruby's require and the Rails application reload process that sits on top of it is all very much not thread-safe. It removes classes from the global namespace and then progressively puts them back, neither of which work very well if you have enough thread running at the same time that is using those classes.

Rachael: [laughs]

Matthew: And so I worked on that. It was a while ago now, around the time that ActionCable was added. But I think I was working on it independently, and it's just a thing that I wanted to fix because Rails was overall pushing towards a stronger embrace of multithreaded request handling. So I introduced a locking mechanism that allowed the reloader to stop and wait if there are concurrent requests occurring but also still retain the ability for the application to load the classes on demand rather than equal loading every time it did a reload, which was the other midpoint solution.

Rachael: That's interesting. Since I'm seeing this trend around threads and multithreading in your past work, can I ask you if you have any thoughts about Ruby threads and Ruby Ractors?

Matthew: I have mixed feelings about Ractor model. It feels not incredibly dissimilar from a multiprocess model. I feel like it has a lot of the same constraints by effectively requiring you to freeze anything that crosses that boundary. It doesn't feel substantially different from interprocess communication. I think there are probably some performance benefits to having everything co-located in the same process. But based on my current understanding of how it works, I don't see it as being the source of an amazing performance win tomorrow.

Rachael: What do you see as the constraints in multiprocessors?

Matthew: Mostly, it is the difficulty of communicating between those processes and coordinating between them because there's an operating system in between. And so you have to send things across a low-level pipe of some sort to provide that communication, which means encoding and decoding, and you can't actually share state of objects. So you have to do more explicit synchronization to make sure that all of the processes have the same view of the world. Whereas with threads, the danger is very much hey, you can share state, and if you don't mean to do that, you're going to have a very bad time.

Rachael: [laughs]

Matthew: But that is also the benefit when you are doing it consciously and very carefully; it makes a big difference in how easily those separately running threads can coordinate to produce a result.

Rachael: So essentially, what you're saying is Ruby Ractors emulate what happens when you're running multiple processes. And a lot of things like Rails are already running in a multiprocess way in order to get the performance gains that they need. So Ruby Ractors probably isn't going to change anything in Rails, which is basically what Ruby has been telling us the whole time.

Matthew: Yeah, I think so.

Rachael: It seems like it would be easier to implement if you're implementing it through a Ruby interface versus attempting to write something from scratch where you kind of have to understand what's happening at the system level.

Matthew: Yeah, I think that is true. The biggest apparent constraint is that all of your classes have to be frozen before you can start running because classes exist outside of the Ractor model, which for a start,; that’s seems to destroy your ability to do Rails development mode style reloading.

Rachael: That makes sense, but it's also the first iteration of them. And that seems like a really sensible way to introduce something, and test it, and make sure everything doesn't break. [laughs]

Matthew: Yes. Changing your fundamental execution model in such a big way definitely has a few breakage risks. So doing it in sensible, considered steps has a lot going for it. And so, yeah, I hope that there is a future step that is in some way able to relax some of those constraints, and then maybe it would follow more directly to support us.

Rachael: Yeah. I just want to take this on a slightly different direction. I understand that you have a project called Gel that's a replacement for, if I remember correctly, it's Bundler, right?

Matthew: Yeah. One day I was feeling a bit frustrated with how less than quickly RubyGems and Bundler were behaving in my application. And I was staring at a bundle install that was taking longer than I thought it should. And a lot of investigation later, yeah, I ended up writing a replacement for RubyGems and Bundler, which doesn't have all the same features, but it works well enough when you just want to run an application. For example, it doesn't have the features that Bundler has for creating your own gem, but it has your install and exec and all of those useful commands. And I think it starts most things about twice as fast, which is...

Rachael: How did you make it faster?

Matthew: A number of different changes it ended up being. And so during installation, it downloads the files that it needs in parallel by default, which Bundler does not do, then it installs and compiles gems in parallel, multithreading, and concurrency. And then, the exec process is faster by changing the way that it manages the library directories. So it's able to make require when you're requiring out a gem substantially faster by turning it into a hash lookup instead of scanning the file system.

Rachael: That's interesting. I have a question, so you decided to make this as a separate gem. You didn't make these changes to Bundler itself. Why did you make that decision from a broad sense? What are the reasons people would do that?

Matthew: In this case, it started out as a series of experiments that I ended up stitching together into a coherent gem, but also it was a series of, I guess, risky as to where it would work changes that were also large. The reality is if I were the maintainer of a gem and someone turned up with this big of a rewrite of some of my most core functionality, I would say, "That's very awesome, but no, thank you."

Rachael: [laughs]

Matthew: So I sort of projected that forward onto those maintainers, and yeah, it just didn't feel like it could work as a realistic ecosystem-wide replacement because it only supports a subset of the operations and a subset of the options, especially part of the reason that Bundler is less speedy on the things that it is able to fast path is that Bundler has options that it has to consider you might have changed, so it has to look in more places. It has to consider more things. So while some of Gel's findings could be upstreamed into Bundler in time, there are other things where it is able to be faster just because it is more opinionated about the way that your application works.

Rachael: Interesting. It's almost like there's a balance between building something that's highly configurable but tends to be slower because it has to check for each of those configurations. And it can't optimize because you might have gone off either path, and then a version that's highly opinionated has a lot of conventions and, because of that, can make a lot of optimizations.

Matthew: Yeah. I think that it does call for a bit of to and fro. And in that regard, I think Bundler suffers essentially from the fact that it was fairly pioneering in a lot of that library management as a bundle problem space. A lot of the other languages systems take a lot of lessons from Bundler. And so likewise in writing Gel, I was able to use lessons that had been learned based on how we use Bundler out in the world, which just wasn't knowledge that was available when Bundler was first being created.

Rachael: That makes sense. Now I'm kind of wondering because I think Cargo was made by the same team, and that's what Rust uses for its package dependency, whether or not we would see those lessons applied there. It's kind of interesting that you mentioned Bundler being a pioneer in dependency management because, in a lot of ways, Rails was a bit of a pioneer as well. And now there are a lot of offshoots from it, things like Phoenix, Laravel, Django, things like that. Is it strange seeing these other language versions of the thing that you maintain kind of like alternate universe versions of your…? [laughs]

Matthew: I guess it's probably a bit different for me because I came into Rails later at a time when those did already exist. I think it probably feels differently strange for the people who more actively worked on Rails in the period before that, whether they can for better or worse, claim ownership of more of the design decisions that have been copied forward into those other systems. For me, it can be useful for inspiration, much as we were saying with Gel. There is that capacity for new systems, new libraries that don't have the backward compatibility constraints to pioneer new ideas and see how it goes. And then we're able to borrow the results of those experiments and fold some of the best ideas back.

Rachael: That's really interesting because I think a lot of times when we think about competition, we think about it in terms of Gel springs up and steals some of Bundler's people away from them and some of their audience. But what you're saying is that really, it's kind of like a feedback cycle where it's like even if something else is inspired from that because it's open-source because you can go see what decisions they made and how it worked out, that actually ends up strengthening both applications. Applications is the wrong word, but it's the one that I'm most used to, both codebases.

Matthew: Yeah. I think there are definitely aspects of both. There can be sometimes jovial, sometimes less jovial competition, especially when you get to something that is closer and more familiar, then it can feel more like a struggle for the same potential user base. But ultimately, one of the advantages of existing in the wider open-source community is that, yes, it is all about cooperating and cross-pollinating ideas. Ultimately, I don't gain financially or otherwise from some new users starting to use Rails. If they would rather use Laravel, I encourage and support that.

Rachael: That kind of goes back to what we were talking about earlier with putting money in open source kind of ruining the magic of it. Those aren't your words; those are my words. [chuckles] But no, that makes a lot of sense, that there isn't that competition, huh?

Matthew: Yeah.

Rachael: That's interesting

Matthew: To me, it feels more like a commons partly because of that because there aren't these financial incentives to shift around people's allegiances and interests such that you might care how many users you have, how many stars you have on GitHub, or whatever other metric directly or indirectly drives your income.

Rachael: That's interesting. I like that. We were talking a second ago about Gel and why you decided to make it a separate project versus having a massive rewrite, and the maintainers saying, "No, thank you." What do you think some of the other reasons are that people may choose to do that?

Matthew: Going back to potential animosities where you do feel more competitive because a library is closer in the ecosystem to the one that you're currently working on, then things can potentially get more tricky where you have people who could be working on the same thing but running into personality clashes. Most often, people are doing this for their personal interest as a hobby. If they don't want to work with someone, then they choose not to.

Rachael: That's interesting. It sounds like there's a lot of freedom in that.

Matthew: Yeah.

Rachael: Yeah, like, there's a lot of freedom in creating different open-source repositories, forking, starting new projects, like you said, treating it like a commons. You don't have to answer this question if you don't want to, but is there a lot of drama in the open-source community that I've just been missing out on?

Matthew: I think it can vary. I think that there can be hotspots of drama. There can be long, simmering, quiet dramas. And then there can be other places where people are actually a lot more friendly and cooperative than you might assume based on an assumption that they are working on competing projects.

Rachael: What sort of other contributions have you had?

Matthew: I worked on reducing the dependencies on the ActionCable, which isn't super exciting and gets a little bit interesting. Oh, why did we have to do that? Someone dumped ActionCable on us, and then we had to reduce the dependencies because it was shipping either way. [laughs]

Rachael: [laughs] Was that another thread-related one? Not so much.

Matthew: No, not so much.

Rachael: I was wondering because I remember when I was looking at ActionCable, maybe I'm wrong about it, but it really seemed like I guess they are sockets, not threads.

Matthew: Actually true, yeah. ActionCable does have a bunch of thread handling and socket handling.

Rachael: I'm seeing a real trend in your previous work. So I'm seeing that you were basically like, "Listen, the way you're handling connections, which we're just going to rename to threads for convenience here, you're losing some of them." And then you were like, okay, I'm looking over here at...oh gosh, I'm trying to remember what the second one was, but that one was also thread-related. And then you were like, "Okay, that's done. Now I'm going to go work with ActionCable, which tangentially has this. And I'm going to go work at Buildkite, where the whole thing is that you get to spin up a whole bunch of threads and split your test cases across 96 different processes.

Matthew: Yeah. I think that there is some truth to that in that you get pigeonholed. You start owning all of the thread-related code in Rails, and suddenly you own all the thread-related code in Rails.

Rachael: [laughs] I think that's an interesting problem to deal with, though. You mentioned earlier that essentially, the way Ractors are handling it is they're freezing everything before they pass it into the Ractor. And the idea behind that is that you have the same shared state. And I've always kind of wondered...because normally, the big thing that you hear about with having multiple different threads is you're accessing the same resources. Even if you freeze everything that's going into it, it's hard for me to imagine a world where you don't still need to access the same resources.

Matthew: Yeah. To me, that is kind of where I look at Ractors and go; that seems like it's going to create challenges in its own right.

Rachael: What sort of advice do you have for people that are attempting to build thread-safe applications? And by that, I just mean any form of concurrency because it's all the same problem.

Matthew: Yeah. Mostly it's “be careful.” [chuckles] Use locks to keep everything in sequence as much as you can and be careful.

Rachael: I like that you're just like, "Be careful." Be careful of what? I like the lock suggestion, though.

Matthew: It's be careful of races, I suppose. It's be careful of the fact that several copies of your code are probably running at the same time, and that means you have to consider how they could interact with each possible pairing of ones. If execution is here and also execution is there, then what state are all of the objects in? Is it consistent? Is it safe for either of those to progress onto the next instruction because you don't know which is going to happen? And even that is counting on the fact that ultimately, Ruby doesn't run multiple lines of Ruby code actually at the same time. If you get into true parallelism, then things get more complicated again.

Rachael: What do you mean by true parallelism?

Matthew: So MRI, the default Ruby interpreter, has a Global Interpreter Lock, which means it only runs one line of Ruby code at any given moment. It supports multiple threads, which means it can have a series of lines of codes that are eligible to run next. But it can only physically run one of them and then decide again which is going to progress. Ractors solves that by allowing each Guild its own lock and its own ability to choose a line of code from JRuby, also relies on Java, which has true parallelism, which means several of those lines could be running at exactly the same moment, particularly where you have a modern CPU that has a lot of calls. Each of those calls could be running a different line of Ruby code. And if you have several of those lines of Ruby code think that they are interacting with the same object, you're going to have a bad time.

Rachael: [laughs] Interesting. I think my only real experience with any sort of parallelism or concurrency has largely been through workers. And there, we kind of did exactly what you described where we would sit there, and we'd just find or create records. And we'd ensure that we didn't dump the same one in at the same time. Well, now I guess we can do that. [laughs] Now I'm beginning to worry.

Matthew: [laughs]

Rachael: I'm sitting here, and I'm like, oh my God, I wrote this code before, and I used find or create where two of them are running at the same time right now. Is that why I had 36 billion records?

Matthew: I'm sure it will probably be fine, mostly.

Rachael: [laughs]

Matthew: But certainly, workers and even multiple request handlers in a rack web server like Puma allow you to get a lot of the benefits of multithreading without having to actually be conscious of the fact that you are operating in a multithreaded environment because Rails makes sure that you can't access easily things that you shouldn't be modifying because they are shared globally. If you try really hard, you can modify state in an instance variable on one of your model classes. And then you're going to need a lock because you might have several things that are accessing that at the same time. But all of the standard Rails application code is fine because you're going to do a Model. Find. And you'll get an instance of that model that is only used by this current thread so that even if there's another thread doing the same thing, getting its own instance of that same model. You might have a data update race in your database, but you aren't at risk of any breakage at the application code or framework level.

Rachael: Because you can't modify both instances between two different workers.

Matthew: Yeah, because the two workers can't both see the same instance.

Rachael: Yeah. And it's like you said before where the way you deal with the database layer is you apply a lock, you update the record, and if there's a lock, then you can't select it. Doesn't Postgres support SELECT FOR UPDATE, which locks the record when you select it?

Matthew: Yeah, exactly. And so most actual multithreading type code is fundamentally doing the same thing as that only instead of dealing with rows in your database, you're dealing with objects and memory.

Rachael: Interesting. I don't often have to think about the fact that my objects are in memory. Normally, I'm thinking about it more from the perspective of my object is just this thing that exists in this class or exists in this controller or exists in this worker. When you start thinking about objects as existing in memory, what sort of problems do you have to think about? How does that change how you view objects? What can you do that would cause things to break in very strange ways?

Matthew: I think the biggest thing that you have to be conscious of is global state and objects that can be referenced and accessed from multiple threads. And particularly, that's true of classes because they are, by design, able to be accessed from a global namespace, which is the constant name. So it's very easy to type user with a capital U in two places, and both of those places can see exactly the same user class. If you're calling .find on it, then that's fine because the instance of user you get back from find is unique to your thread.

Rachael: But when you modify the user class, which you can do in Ruby, and you can just give it a method, surprise, user, you have a new method, then all of your threads are like, oh, hey.

Matthew: Then that method appears there immediately.

Rachael: And what Ractors do is they say the class has to be frozen, so you can't add new methods to it after you've passed it in. And they do that because they don't know how to handle the add a random class to or add a random method to a class and have it applied to all of your...you said the word a moment ago, and I don't...was it forum? It was what the Ractor runs on.

Matthew: Guild.

Rachael: Guild, yes. I thought that was a very strange word, Guild because you can't update that class on all of the Guilds at once.

Matthew: Yeah, because they are running truly in parallel, and they don't want to constantly be locking in order to see a synchronized worldview. The design constraint that says they have to be able to run fully in parallel inherently means they can't be aware of potential changes caused by a parallel execution. And so that's why they rely on everything being frozen instead.

Rachael: Interesting. That's really, really interesting. I feel like I understand this much better now. That's cool. I want to thank you so much for giving me a better view of concurrency and also sharing your thoughts about open source and its future and your experiences with Rails.

Matthew: Thanks very much for having me. It's been a great chat.

Rachael: I enjoyed it a lot. Where can people find you?

Matthew: I am @_matthewd on Twitter and matthewd on GitHub.

Rachael: Great. Thank you so much. And thank you all for listening to the Polyglot Podcast.

Jonan: Thank you so much for joining us. We really appreciate it. You can find the show notes for this episode along with all of the rest of The Relicans podcasts on therelicans.com. In fact, most anything The Relicans get up to online will be on that site. We'll see you next week. Take care.
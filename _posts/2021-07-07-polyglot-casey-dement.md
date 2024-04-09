---
title: "Software Architecture: Different vs Wrong with Casey Dement"
category: podcast
description: Casey says, "If you can't tell the difference between different and wrong, you can't be a software architect. You just can't do the job."
feature-img: /assets/img/podcasts/caseydement_polyglot.jpg
image: /assets/img/podcasts/caseydement_polyglot.jpg
layout: post
thumbnail: /assets/img/podcasts/caseydement_polyglot.jpg
podcast_url: https://www.therelicans.com/mandymoore/software-architecture-different-vs-wrong-with-casey-dement-190b
excerpt_separator: <!--more-->
---
I met Casey at one of my previous jobs and admire the way he designs systems and discusses architecture. He's a long-time software architect who has been designing solutions for businesses of all sizes for 26 years. I've always wanted to be a software architect, but the timing has never worked out. This was a really fun podcast though! Casey has a bunch of great stories to share about designing systems, unintended advertising side effects, and technology hottakes!
<!--more-->

> This podcast was released 07/07/2021 as part of the Polyglot Podcast - a series from The New Relic Relicans - both the series and team that created it have been dismantled. It was so much fun while it lasted, and I've recovered as much as possible from the Internet Archive.
>
> Huge Thanks to [Mandy Moore](https://mandymoore.tech/) who produced, edited, and put untold hours into this podcast. Without her work, the transcripts below (and episodes themselves) wouldn't have existed.

## Teasers
> Casey: All the time. Pretty much any time you try to take the initiative and do something new and cool, there's always going to be lots of unintended consequences.

>Rachael: One of the challenges of having power is the fact that you are not the person who is doing the thing. It's really easy to tell a computer, "I would like you to do this thing, go do this thing." And it'll do exactly what you told it to do. If you tell a person that, you can hope that what they bring back to you is that thing, [...]But at the end of the day, you can't make them do that thing. You can just repeatedly tell them over and over and over again, "I would like you to do this thing. Please do this thing in the way that I have drawn out in the pretty diagram."
>
> Casey: Well, and so much of it is there's some perspective that you have because you're looking at a certain set of concerns, and there's some perspective they have because they're looking at a certain set of concerns. And I take it as a given that two bright people looking at the same set of information will come to reasonably compatible conclusions.

> Casey: And when they go out and build their piece of it, it all fits together. Legos don't work if one person is making bricks with circles and another one's making bricks with squares.

### Technology Reviews
> Casey: Yep. Rust is interesting. Rust is a language that can give you the low-level capabilities and performance of C or C++ without the existential threat to your life that comes from choosing to use C as the programming language that you're going to work in because C is the language where you can make a very, very small hard-to-find mistake that allows national security to be undermined.

> Casey: I've actually found that I get a really good advantage out of coupling MongoDB and a relational database together and representing the actual structured, detailed objects in Mongo and then putting the relationships between things in the relational database. And then, I do my queries in the relational database, get back a list of the objects that I need, then go fetch those objects from Mongo, and use those to populate whatever interface or interaction I'm dealing with.

> Casey: So I'll answer that question this way, the Weather Channel originally was built on top of Oracle. They were paying a lot of money to Oracle and had full Oracle enterprise support. And The Weather Channel dumped Oracle and went to MySQL. Ironically, Oracle later bought MySQL. What they found is that when they had a problem with the database, and they were dealing with the MySQL open-source community, the level of expertise that they could access and the rapidity, the latency with which they would get responses back was much better than what they were getting paying Oracle for expert support.

## [Full Transcript](https://web.archive.org/web/20220706133413/https://www.therelicans.com/mandymoore/software-architecture-different-vs-wrong-with-casey-dement-190b)

Jonan Scheffler: Hello and welcome to Polyglot, proudly brought to you by New Relic's developer relations team, The Relicans. Polyglot is about software design. It's about looking beyond languages to the patterns and methods that we as developers use to do our best work. You can join us every week to hear from developers who have stories to share about what has worked for them and may have some opinions about how best to write quality software. We may not always agree, but we are certainly going to have fun, and we will always do our best to level up together. You can find the show notes for this episode and all of The Relicans podcasts on developer.newrelic.com/podcasts. Thank you so much for joining us. Enjoy the show.

Rachael Wright-Munn: Hello, everyone, and welcome to the Polyglot. I'm joined by Casey Dement. He's a long-time software architect who has been designing solutions for businesses of all sizes for 26 years. He's currently Chief Architect at Rex. Hi, Casey, how are you?

Casey Dement: Hi, there. I'm doing well. How have you been?

Rachael: I'm good. I wanted to ask you a little bit about your experience with architecture. I don't know if you know this, but I've always aspired to become an architect. And I think that a lot of people don't get to meet software architects in their day-to-day jobs or really understand what the job entails. So, can we start with that? In your eyes, what does it mean to be a software architect?

Casey: It's a difficult question because every single company defines it slightly differently. In my mind, the essence of architecture is that you're thinking about the long-term implications of what the business needs to achieve instead of just thinking about the immediate feature or the immediate bug fix that needs to be resolved.

Rachael: That's interesting. So you've done this for a really long time at a couple of different companies. We met at Calendly, and there you were, evaluating their needs. How do you go about doing that? Because I remember we were doing some really interesting stuff around breaking the application apart from a monolith into subsystems. How do you start to make those decisions, like analyze what it needs and where things need to be?

Casey: So I suspect this is different for every architect. For me, it always starts with trying to build a model in my head of the entire system. So I want to understand what all of the different pieces of the system are, what the information is that each one is dealing with, and how that information moves around the system and gets mutated by different parts of the system. And the more complete of a picture that I can build in my head of that system, then the more I can begin to try things out in my head, like look at different problems cases, look at different use cases, different scaling challenges, and run that system through that exercise in my head and find where things don't work well. And then from there, try to translate that into okay; what does that mean in terms of actual concrete systems and changes to these concrete systems that might be necessary?

Rachael: Can you tell me a little bit about what you're working on right now?

Casey: So I just started with Rex. I've been there for about a month. And I'm still in that phase where I'm evaluating the systems that they have, comparing those to the actual business needs, and trying to decide whether or not there are any glaring issues that need to be dealt with in order to get things where they need to be for the success of the company. And then from there, it will turn into figuring out where the company wants to be in a year, and in three years, in five years and trying to imagine how those systems need to evolve over that time in order to get us to those goals.

Rachael: That makes sense. Can you tell me about a project that you've worked on in the past that felt that it went very successfully, like an architecture change?

Casey: So I think one of the most interesting ones that I've dealt with was back at The Weather Channel. When I came into The Weather Channel, it was still very much an old-school web 1.0 type product, a big product. I think it was the 17th largest website on the internet at the time, but very static HTML, static images, not a very fancy site at all. And I started experimenting with some of the interactive mapping technology. This was in the mid-2000s, so Google Maps was still a fairly new and cool technology at the time.

Rachael: [laughs]

Casey: And so I started playing around with that, playing around with how to put weather maps onto it, and pitched that to the company, "Hey, look, this is pretty cool. We should look at doing this. Easy sell from the product perspective." You show the product people the weather maps on top of this panning and zooming interface; they were in love.

Rachael: [laughs]

Casey: Then the sales team got involved in the conversation and pointed out that roughly $15 million in annual revenue was coming from the various page loads that were happening as people moved back and forth between different static maps. And turning that all into a single-page experience was going to massively reduce the amount of revenue those pages were generating. So if I gave the headline of the project, the project was implementing interactive maps, but the interactive maps was actually the easiest part of the project. The hard part of the project was I basically had to invent an entirely new technology for being able to do dynamic ad reload on the page as the map targeting was changing and doing geographic resolution of the targeting information so that we could serve geotargeting ads as someone was moving around the map. And I would say, yeah, that was about a year-long project, and at least nine months of it was just dealing with the advertising implications. But it was a really fascinating and interesting challenge because, at the time, things were very basic. Ads loaded when the page loaded, and the thought of reloading ads without reloading the page was literally unthinkable. And I mean that to say the Google DFP team told me it was impossible.

Rachael: [laughs]

Casey: And so I was just like, nope, nope. I'm going to implement these interactive maps. They're too cool. It's going to happen, so I had to figure out how to make it happen.

Rachael: That's amazing because when you first described it, you're like, oh, it's a weather app. It's going to have interactive maps. I thought the interactive maps are going to be the hard part. But then you start talking about the fact that...I wouldn't really think about the fact that if you're going to a specific zip code, you're able to deliver ads that are based on that zip code and that those geo-located ads are going to be worth more revenue.

Casey: Yes, absolutely. The CPMs for a generic, undifferentiated ad at the time were probably two or three dollars, whereas if you could actually get targeting to know okay, this person's into golf, and they're looking at somewhere on the East Coast, and there's a golf course here so I can show an ad about that golf course, we're talking $15, $20 CPM an ad.

Rachael: [laughs]

Casey: So that was a big deal.

Rachael: Yeah, that makes absolute perfect sense. If I'm checking the weather at Jekyll Island, that means I'm probably planning a trip to Jekyll Island. Meanwhile, if I'm just checking, I don't know, does anybody like...oh, you know what? When people are checking on hurricanes, they tend to look at an entire country space.

Casey: And one of the evil secrets of The Weather Channel is that you would think hurricanes would be great, that they're going to get lots of traffic, that they make lots of money on those days. In fact, they don't. The hurricanes are terrible because you only have a certain amount of inventory that you have pre-sold, and then a hurricane shows up; 200 million people visit the website that day.

Rachael: [laughs]

Casey: You instantly sell out of all of your inventory, and you're doing nothing but showing house ads for free for the rest of the day.

Rachael: That's interesting. That's really cool.

Casey: Yeah, the hurricanes aren't actually the highest volume. I was surprised to find out that the highest volume days that that site has is big winter storms. Because those big winter storms, a lot of times, you have a long front that's covering most of the United States and that sweeps across the Eastern half of the United States. The number of people impacted by that is much bigger than a hurricane event.

Rachael: That's true. And if you think about it, that's also separated over multiple days too, so it's probably better for that advertising revenue.

Casey: Well, you still sell out immediately. This is about the same time that the ad networks were starting to come in, and there was a big debate happening at The Weather Channel over whether or not to use those ad networks. It was great because you had unlimited inventory. You could keep making money no matter how many page views you showed. But they were also much lower CPMs, like a dollar or two, compared to actual differentiated household ads, much, much less revenue. But if you're going to have a huge burst event, that becomes a very appropriate time to use that sort of inventory. So that's how the ad networks snuck into your big publishing house websites is the handling overflow traffic. And eventually, advertising networks took hold, and that's pretty much the only way anybody does anything with sponsorships anymore.

Rachael: Gotcha. So I guess there probably was a project that went in and was like, "Hey, how do we handle overflow inventory? And we have our paid ads that we The Weather Channel have set up, and then we've also got overflow inventory that goes to the ad networks."

Casey: Yeah, in particular video ads. Video ads were the place where they were able to make a lot more revenue off of those high traffic scenarios because video ads have really high CPMs, but you typically had a very low volume of them. So when you have a big weather event, there'll be lots of people watching video. And so, the ad networks became a huge opportunity there.

Rachael: I often wonder about video ads how that impacts page load speed as well. And how do you counterbalance that?

Casey: It doesn't usually impact the page load speed. What's going to happen is there's a certain abandonment rate that you're going to get on video. So you typically will have a pre-roll ad where it's going to show the ad before it shows the video, and then you may have one or more mid-roll ads, and then you're going to have a post-roll ad that comes at the end.

Rachael: You're talking about ads that are on the video.

Casey: Right, yeah. The stream feeds into the actual video itself.

Rachael: I thought you were talking about the ads that swing in from the side.

Casey: No, it's the ads within the video; those are the ones that are really good CPMs.

Rachael: I see. Well, Twitch begs to differ.

Casey: [laughs]

Rachael: I have a feeling this isn't the only project that you've worked on.

Casey: No, no, not at all. But it was one of the fascinating ones because there was just so much to it. I thought I was doing a map, and instead, I spent a lot of time building a lot of different systems in order to make it happen. No good deed ever goes unpunished.

Rachael: [laughs] How often does that happen?

Casey: All the time. Pretty much any time you try to take the initiative and do something new and cool, there's always going to be lots of unintended consequences.

Rachael: How do you discover those? Does it just happen? Like, you're taking your project plan around, and sales sees it, and they're like, "Hey."

Casey: Yeah, that was exactly the way that happened is that this project was greenlit. The product was 100% on board. It was the number one priority. Let's do it. And then somebody mentioned this to the ad sales team, and the ad sales team were like, [chuckles] "No, you cannot do that." So yeah, that turned into a bit of fun. But usually, the way you discover these unintended consequences is just in the process of working through it. There's an old saying like, "The first victim of any battle is the battle plan." Architecture is much the same way. You have a plan of what you intend to build and what the scope of it is going to be, and then you start building it, and the plan immediately gets slaughtered. And you just have to be very flexible. You have to be willing to see that something that you thought was the thing is actually wrong. And you need to change course, and you need to figure out how to fix your oversight ideally very quickly and without incurring a whole bunch of additional scope to the company. There's a whole lot of learning to eat crow and rather like it in software as well.

Rachael: [laughs] That feels like grilled crow.

Casey: Yes, with some good Cholula on it or something.

Rachael: Oh my gosh. [chuckles] So, going back to what I was asking about before, I have a feeling this probably isn't the only project that you've worked on, and there have been a couple of other interesting ones in your 26-year career. [laughs]

Casey: So let me think, other fun things. So I did get to have a lot of fun at The Weather Channel with a project where...so they had built a system before I got there called Analyticus, which was essentially a log processing system that was ingesting all of the logs that would get recorded during a day and use that to generate reports. So they had created their own pixel system where you basically could stick a URL into a page that would load a little one by one JPEG and put extra parameters on the URL, and all of those parameters got parsed. And so you could use that to record information about the page. And this system at the time that I got there was taking about 27 hours to process a day of information.

Rachael: Wow.

Casey: Which means it was about two or three days behind at that point, and it got a little bit further behind every day. And so we needed something new. And so that was right about the time that Hadoop became an interesting topic of conversation. And so we kind of dove into Hadoop really early days when it was very rough and got to figure out how to build a system that could process about 700 gigabytes and do log files a day. And the best part about that was being able to...one of the main problems that metric systems tend to have is that a lot of times,, you have to know what you want to know the answer to ahead of time. So you have to craft what the query is so that the system that's processing the logs can go and pull out the specific information that it needs to which means that if you come up with some new question you want to answer, it's going to be a couple of months before you can get the answer to it because you've got to create that query logic and then the system has to spend some time accumulating information. So what we really wanted to do is get to a point where we could just dump all of the raw data into one of these big, distributed processing engines. And then when somebody came up with a question they wanted to ask, we could just go write a query and historically go back and look at all of the data to get to the answer. That was a fun project, mostly because nobody had really worked with systems like that before outside of Google. So it was a lot of fun figuring out how to make them work.

Rachael: Interesting. You mentioned that you jumped on Hadoop very early on. And I also remember we were doing some Rust work, and that's a new technology too. When you're evaluating what technology to use, how much do you look at existing technologies versus brand new, untested technologies? And how do you decide whether or not something is ready to be used?

Casey: That's a tough choice. Truthfully, most of it is just based on the amount of maturity within the community and the amount of energy within the community. I'm definitely more willing to take a chance on something new if it's very obvious that there's a huge community that's gotten behind. Because I know that if I get in over my head, I'm going to be able to throw myself on the mercy of the crowd and probably be able to find a way out of the hole. You don't want to get too far on the bleeding edge of that. The last thing you want to do is waste the company's time trying to make something work that just isn't ready yet. But yeah, it's always a bit of a subjective judgment call. One of the consequences of doing what I do and trying to do it for a very long time is that you have to be constantly ingesting information, constantly looking for new tools and new ways to solve problems. Otherwise, you blink your eyes and you find that oh, I have some really sophisticated great skillsets for 15 years ago, [laughter] and they don't really help very much now. So the industry will move past you in a heartbeat if you don't keep on it. So I probably spend...I easily spend two to three hours out of every day just constantly reading, going through podcasts, keeping track of all the different projects that are coming along, trying to be aware of what kind of solutions are out there and what new technologies are emerging. So that when I encounter a problem where that solution is the right solution or seems to be the right solution for the problem, then I have enough information to be able to make that call and move forward into some new approach.

Rachael: Yeah. And I'm going to ask another hard question: how much of that is related to your job and your desire to be good at it? And how much of that is related to new shiny, cool things?

Casey: I think that there's a virtuous feedback loop there. [laughter]

Rachael: That's a great answer. [laughs]

Casey: If I wasn't into learning new technologies, I probably wouldn't be able to be good at this for very long, but I think both are necessary. There's definitely a bit of the Magpie Effect in the new cool, shiny. But one of the things that you have to temper is you can't just say, "Oh, here's a new technology. Let's go rewrite everything in that because it looks cool." One of those really difficult things to do as an architect is a lot of times...and I know back at Calendly there were a couple of people that fell into this category, engineers who are smart, and they're energetic, and they find some new technology, and they want to go use that technology. And they will come to you, and they'll be like, "Hey, we should use this." And it's like, okay, the last thing on earth that I want to do is temper this person's energy in any way. But at the same time, no, we're not going to go just rewrite things on a new, cool technology because it's new and cool.

Rachael: Exactly, those rewrites are expensive.

Casey: Trying to figure out how to keep an engineer engaged and energized and wanting to go in and learn new things without letting people run off the rails and impact the business in some ways is difficult. And this is the honest truth of architecture, probably 25% of the job is computers, 75% of the job is people. So much of it is just understanding humans and being able to productively work with humans and get them to swim in a certain direction and actually enjoy it because anybody can be like, "No, I have the authority. You will do this because I told you to," but then the engineers all hate you and they hate their job. And that's just not an effective way to do it.

Rachael: And they go swim off.

Casey: Yeah, or they constantly find ways to subvert you, which is even worse. So the trick is to get them to like it.

Rachael: I think...and this is something that I've always thought, one of the challenges of having power is the fact that you are not the person who is doing the thing. It's really easy to tell a computer, "I would like you to do this thing, go do this thing." And it'll do exactly what you told it to do. If you tell a person that, you can hope that what they bring back to you is that thing, and your efforts, like you; why mentioned, trying to convince them that they want to go in that direction, like making them happy. But at the end of the day, you can't make them do that thing. You can just repeatedly tell them over and over and over again, "I would like you to do this thing. Please do this thing in the way that I have drawn out in the pretty diagram."

Casey: Well, and so much of it is there's some perspective that you have because you're looking at a certain set of concerns, and there's some perspective they have because they're looking at a certain set of concerns. And I take it as a given that two bright people looking at the same set of information will come to reasonably compatible conclusions. So if two people are coming to very different conclusions, it probably means they're looking at different information. So a lot of that becomes okay; why did I want to go in this direction? What were my motivations? What were the concerns that I had? And can I explain those to the engineer and get them to look at things from that perspective? And also, what's their perspective? What are the concerns that they have? What's motivating them? And do I need to listen to what they're saying and potentially rethink my own perspective? The very first thing that I teach a new architect whenever I bring someone into architecture, the first conversation is that the vital skill you have to develop in order to do architecture is you have to learn to tell the difference between wrong and different. Because it's very common that someone is going to have a different opinion than you. That doesn't mean their opinion is wrong. Sometimes nobody's wrong. Sometimes it's just a subjective matter of why I like this one better, and you like that one better. But sometimes you're wrong, sometimes they're right. And if you're not willing to say, "You know what? Your idea is better. Let's do it your way," then you can't keep the respect of a team.

Rachael: That's really true. Also, I love that quote, "You have to learn to tell the difference between different and wrong."

Casey: Yeah. If you can't tell the difference between different and wrong, you can't be a software architect. You just can't do the job.

Rachael: I'm going to sit with that one for a second because it's a great quote, oh my gosh. And I see this so often when it comes to functional programming versus object-oriented, double quotes, single quotes, spaces, tabs, services versus objects. I see these constant arguments and discussions over things that ultimately are just artistic preference. I've had this conversation a couple of times with guests on the podcast where it's kind of like, I think that the previous languages that you've worked with influence your ideas of what code is aesthetically pleasing, and you carry those with you.

Casey: Absolutely. And I would say a lot of it isn't even subjective. It's just about every paradigm, every toolset; every approach has a particular problem that it was trying to solve. And in a use case where that problem is the overriding problem, that tool or that paradigm may be the correct solution. You and I in the past, when we worked together, we were both dealing with Ruby. And just personal…my background and bias, I'm not a big fan of Ruby. I don't love it. But I also recognize that there was a particular problem set that Ruby and Rails was trying to solve. And if that's the problem that you're trying to solve, that toolset is a really excellent way to solve that problem. And so the key to it is you have to kind of understand not just what the tool is but also why it's there and what the tool is really about. And that's how you can figure out okay, for this specific situation, the right toolset or at least an appropriate toolset is this toolset versus that toolset.

Rachael: I want to try this; (and I've never done this before). I want to throw some technologies at you, and I want you to tell me what is the situation that they're good for?

Casey: I should tell you, though, I have strong opinions. I'm probably going to make people angry with these answers. [laughs]

Rachael: That's what this podcast is for; it’s for strong opinions. All right. First off, Ruby.

Casey: Ruby is fantastic if you want to be able to create a bunch of new features very quickly. Ruby does an excellent job of taking all of the barriers out of adding new functionality into an application. My bias against Ruby is that I think that it does so by trading off how hard it's going to be to maintain those features later, and I don't think that's a fair trade. But if your overriding concern is I need to get this business stood up and I need to get as many of these features functional as I can as quickly as possible, Ruby's a reasonable solution because it's definitely going to be the thing that you can move the quickest with.

Rachael: Python.

Casey: Oh, significant whitespace.

Rachael: [laughs]

Casey: I feel like we should have moved past that decades ago.

Rachael: [laughs] I'm going to tell Aaron that. He's my co-worker who works on Python.

Casey: So I will say that what I love about Python is that it finally killed Perl.

Rachael: [laughs]

Casey: Python has become the go-to language for building simple, quick scripting solutions where you've got some specific problem, and you just need to write some code that solves that specific problem; Python is great for that use case. And it's developed a lot of really great library support in areas where that's the kind of coding that people are doing. As opposed to you don't see anywhere near the kind of depth of community and support if you were going to, say, use Python to create data services. It exists. You can do that. Django is great, but it's nowhere near the kind of depth if you were looking at doing Python for doing machine learning type applications.

Rachael: Yeah, exactly. When I think of Python, I typically think of machine learning and all of the tooling and the science applications that it has. Okay. Rust.

Casey: Yep. Rust is interesting. Rust is a language that can give you the low-level capabilities and performance of C or C++ without the existential threat to your life that comes from choosing to use C as the programming language that you're going to work in because C is the language where you can make a very, very small hard-to-find mistake that allows national security to be undermined.

Rachael: [laughs]

Casey: Rust doesn't have those problems. What Rust trades in exchange for that is an extremely challenging compiler. Essentially what Rust does is they have moved the bugs that you would normally discover and have to debug at runtime into you're now having to deal with those bugs and solve them in order to get the compiler to pass in the first place. It's the only language I've ever worked in where 85% of your time was just getting it to compile. And once you got it to compile, you were pretty much done. But you really had to work to get it to compile in the first place as opposed to most programming languages you can get it to run immediately, and then you spend the rest of your life trying to actually get it to work. Rust has a different trade-off.

Rachael: [laughs] Yeah. That's very, very true. I've been learning Rust recently, and it really is like, you have to understand the compiler error where it's coming from. But the compiler errors are gorgeous, especially if you're going through a tutorial, and they're taking you over all of the nice error messages.

Casey: Yeah, Rust is beautiful. And I think you're going to see over the next ten years a lot of the low-level system work being done moving into Rust. Microsoft seems to be really opening up to it. The Linux community seems to be starting to embrace it. So I think you're going to see a lot of penetration from Rust in that level of the system because I mean, let's face it. The bugs from working in C are awful. Nobody wants to deal with those. Pointer arithmetic is the greatest superpower and also possibly the ultimate work of the devil.

Rachael: [laughs] All right, let's go into databases speed round. Postgres.

Casey: Postgres is just a good, stable middle-of-the-road. It does everything pretty well, not really fantastic at anything. But it's never a bad choice for just about any kind of use case.

Rachael: MongoDB.

Casey: MongoDB is absolutely fantastic if you're trying to take structured objects and you're trying to persist those structured objects and be able to interact with them. Not having to go through the mental Olympics of translating your structured objects into normalized tabular structures and back really really simplifies the intellectual complexity of dealing with the database from a programming perspective. So I love MongoDB right up until you need to actually represent relations between things, and then Mongo doesn't help you at all.

Rachael: [laughs]

Casey: I've actually found that I get a really good advantage out of coupling MongoDB and a relational database together and representing the actual structured, detailed objects in Mongo and then putting the relationships between things in the relational database. And then, I do my queries in the relational database, get back a list of the objects that I need, then go fetch those objects from Mongo, and use those to populate whatever interface or interaction I'm dealing with.

Rachael: Whoa. That's interesting. That's interesting. I guess that would be some sort of situation where you're dealing with a lot of form data in different forms and that sort of thing.

Casey: Well, so a good example of this is one of the systems I had to build was back at Sharecare. It was very much like Twitter. But instead of it just being where the individual events that were appearing were just a single text field, there were a vast number of different kinds of events. And every one of those events had its own specific schema and model for the data that was associated with it. So trying to normalize that out into a relational database would have been about 100 tables to represent all of the different structures of the object, which would have been an incredibly difficult database to understand and work with. And Mongo, one collection, polymorphic object structures inside of there, simple, easy everybody gets it instantly. But this is also like Twitter. So you've got followers, and you've got people who are being followed. And you've got the events that those people have produced. So trying to deal with that in Mongo is almost impossible. So representing all of those follower followy and event relationships in a relational database, let me do very efficient querying to see okay; these are the first 20 things you should see on your wall. And then I could just go query those 20 things out of Mongo and be able to render them very rapidly.

Rachael: I like that. That's really cool. All right, Redis.

Casey: Redis is an interesting system that kind of sits in the gap between a lot of different places. It's kind of like Memcached. It's an in-memory solution; it’s really fast. But it's also got really complex querying capabilities and can do interesting things like queues. Redis is one of those things where it's like when you have a weird problem, and none of your traditional databases solve it, Redis is usually going to be the thing that can bail you out. But yeah, I always struggle with Redis because it just seems like it's an amoeba. It fits into a lot of weird shapes, but I don't really have a swim lane that I think of it as being okay; this is Redis' lane. It's just an interesting little additive that lets you solve a lot of hard problems.

Rachael: That's interesting. Java.

Casey: The whole world is written in Java at this point.

Rachael: [laughs]

Casey: If you don't mind typing a whole lot, there's nothing wrong with Java, but you are going to have to type a lot. Tools like IntelliJ are useful. The refactoring capabilities in IntelliJ are beautiful and will knock out probably about 60% to 70% of the boilerplate typing you're going to have to do but still, it's just very verbose. But there's nothing wrong with it other than they tried to reinvent Scala in Java 8, and it's just not...it's nowhere near...The functional capabilities in Java just make you wish you were working in a functional language when you try to use them.

Rachael: And my last one isn't a language technically is .NET framework and all of the associated languages that come with it.

Casey: It's interesting because the reason I learned Java in the first place was because of .NET. I guess this was back around '99, 2000, somewhere around there. I went to an all-day Technet briefing where Microsoft was pitching .NET, and they spent the whole day explaining how .NET worked and what it was going to be, and why they were doing it, and why it was a better way. And at the end of the day, I sat there, and I thought, what they really just did is they explained to me why Java is better than Microsoft.

Rachael: [laughs]

Casey: So maybe I should go learn Java if they're going to reinvent all of their tools to make them be Java. So at that point, I jumped out of the Microsoft developer community and started learning Java and never really went back. So I haven't spent a lot of time in those languages. But my general understanding is that C# is basically like a better Java. [chuckles]. It's essentially Java, but they fixed some of the obvious things about Java that were stinky. F# is a competent, functional programming language. It's not going to make you be able to claim that you're smarter than everybody else, like if you learn Haskell.

Rachael: [laughs]

Casey: But it works quite well and gets it done, and it's not nerdy like Erlang. But yeah, I have nothing against the .NET platforms. They just don't have the sort of development support. They don't have the community there. They're used primarily in large businesses. And those communities and the open-source movement don't really hug all that much. And so you just don't get this...like, if you sit down in Java and you say, "I want to make a web application in Java. What frameworks are available?" Your problem's going to be picking one because there are just so many, and most of them are very mature and very feature-rich, and very workable. If I want to build a web application in .NET, it's going to be like, okay, all of these are kind of crappy. [chuckles] I don't want to use any of these frameworks because it's expecting you to be building big enterprise software using toolsets that you're buying from somebody.

Rachael: Oh yeah. Yeah, that's true. So then, I want to dig into this more. How important is the open-source community surrounding technology that you want to work with?

Casey: So I'll answer that question this way, the Weather Channel originally was built on top of Oracle. They were paying a lot of money to Oracle and had full Oracle enterprise support. And The Weather Channel dumped Oracle and went to MySQL. Ironically, Oracle later bought MySQL. What they found is that when they had a problem with the database, and they were dealing with the MySQL open-source community, the level of expertise that they could access and the rapidity, the latency with which they would get responses back was much better than what they were getting paying Oracle for expert support from Oracle, which was very surprising to me because, at that point in my life, I would have definitely expected that if you're paying for support, you're going to get the absolute best premium support. But a good strong open-source community is going to give you every bit as strong or better support for a system than what you're going to get out of a large commercial entity. And so I'm pretty bullish on open source in general. I will always be open to using an open-source toolset that has a good, strong community behind it before I'll go out and buy something specifically.

Rachael: Let's dig into that 75% of architecture. Why do you think that is? Why do you think the developers as a whole...because this is something that I have seen numerous times as well. Why do you think that we are more motivated to build things and deliver things when we're doing them because we want to versus when we're paid to do them?

Casey: So here's the thing about engineers: the average IQ of a software engineer is pretty darn high. Your typical software engineer has spent most of their life being one of, if not the smartest person in the room of every room that they've ever been in. They're usually the person who has the answer. They almost always know exactly what they're talking about, and they're not inclined to be the kind of person who's going to be like, "I don't know what to do. Please tell me." It's just not software engineer personality at all. So when you're trying to get a software engineer to build something, they're going to look at the problem, and they're going to have ideas about what that solution should be. And they're going to have probably pretty strong opinions about their ideas, about what that should be. And that's what you're going to get when you're dealing with very bright people who know what they're talking about. So the trick is, like I said, first and foremost, figuring out what the actual right solution is because it could be you are right, and it could be they were right. It could be nobody's right, and it could be everybody's right. And then getting everybody on the same page and actually in agreement about what it is you're going to build and just making sure everybody has the same picture in their head because so much of the time it's easy to get agreement, and then you find out later wait, that's not what I meant at all. [laughter] You heard me, but you didn't really hear me. And so much of it is communication and just getting everybody into the same headspace so that everybody has the same picture. And when they go out and build their piece of it, it all fits together. Legos don't work if one person is making bricks with circles and another one's making bricks with squares.

Rachael: [laughs] That's very, very true. Do you have any advice for aspiring architects or people who want to get more involved and who want to go down that path?

Casey: So I would say that for me, my path from software engineering to architecture was pretty much...it was less about becoming an architect and more about realizing that I had always been an architect. Even when I was trying to write software, I wasn't really trying to write software. I was trying to architect software, maybe not a particularly good software engineer, because there was always scope creep. But my advice to engineers who are interested in architecture is to try it. Take the initiative to step up and start making design decisions about a system and trying to get other people to agree with you because that's the job. Having that idea in your head and then getting everybody else on the same page so that that's the idea that actually becomes real is a hard thing. And it's not something that, in general, software engineers are naturally good at. I certainly wasn't naturally good at it, to begin with, because we tend to be nerds. Social butterfly is not usually what you think of when you think of software engineers. So being able to develop those people skills is something that you're only going to get by doing it. And so that's my general advice is if you're interested in architecture, just start architecting. And I can't say this absolutely, but in general terms, most software architects don't want to have to actually be responsible for everything. And if someone on the team is willing to step up and start making choices and documenting those choices, and those choices are reasonable, your architect is probably more than happy to step back and let you run with it because it just means less work for us. So, yeah, it's always a good day.

Rachael: [laughs] That's true. That is some really, really, really great advice, and I appreciate it. Do you have any advice around, with all your experience, documenting the solutions in a way that gets people to see the same vision and swim in the same direction?

Casey: So this is an area where...you talk about those fights that engineers have, this is where architects will fight about what kind of drawing is the best kind of drawing. For me, I've gotten in the habit of just being very, very unimaginative about diagramming systems. In particular, I very much love tools that I don't have the ability to control layout whatsoever. I don't know if you've ever seen a tool called Mermaid.

Rachael: Yeah, it's ugly.

Casey: Yeah, it's ugly, it's terrible. But you're writing text, and a diagram happens, and you don't spend any time trying to get the diagram to look pretty because you can't control that. So you spend all your time thinking about okay, what are the relationships between these things?

Rachael: Mermaid kills me.

Casey: Because it's ugly? [laughs]

Rachael: I need to get this out, and then we can finish. Okay, Mermaid kills me because I look at it, and it's such a good tool. And being able to write out the relationships is really awesome because you're right; you just type it. And literally, if they just changed the color pallet and added some shadows, it would magically be beautiful. It's literally just that they have the most hideous color palette known to man.

Casey: So you can put CSS styles into Mermaid.

Rachael: Oh, okay.

Casey: You can style the objects; you can style the lines. You can style the subgraphs where you group things together. But I try to steer away from that because it defeats the purpose of why I'm there, which is if I start thinking about what it looks like, then I waste all of my time trying to make it pretty instead of actually thinking about the content of it. I love those kinds of tools because I'm not good at the aesthetic. If I'm trying to make it pretty, I'm going to spend days trying to make it pretty, and it's still going to be ugly when I'm done. So tools that just make me have to give up on that and focus on the content are usually the place that I will go. There's a lovely, lovely site that's been around forever called Web Sequence Diagrams. And it's another one of those sorts of tools where you're just sort of writing out a script, and it's creating a UML sequence diagram. A good UML sequence diagram is one of the most informative, communicative types of drawings out there because it's the only thing that lets you visualize the actual process of how something is happening in a very simple and straightforward way. But trying to draw those things by hand takes forever; it’s just awful. So, yeah, I'm a big fan of those sorts of tools.

Rachael: I like that. That's some really, really great advice. Do you have one teeny tiny, short little story to give this episode a beautiful, funny ending?

Casey: Funny? Oh God, you want me to be funny. Now I'm in trouble.

Rachael: You don't have to be funny. It can be interesting, too, one last great Casey architecture anecdote.

Casey: So possibly the most frustrating system I've ever seen in my life. One of the companies that we bought back at Sharecare had created a system that would do a health assessment on a person. So you'd go through a questionnaire, fill it out, and answer a bunch of questions, and it would give you a general assessment of how healthy you were. The way that system had come about is there was a very bright doctor who had created this algorithm, and he had created it in an Excel spreadsheet. So when [inaudible 00:41:09] decided to build a system around this, what they did is they hired a contract team that built a Perl-based system that would read the Excel spreadsheet in and input every single one of the individual cell values, whether they be formulas or numbers into a big array. And then, they had recursive logic in Perl that would essentially evaluate the Excel spreadsheet across 18,000 elements in a giant array. It leaked RAM so hard. It was like a damn fountain.

Rachael: [laughs]

Casey: And it was slow. It was physically impossible for anyone to understand the logic of what was happening inside of the system because all the logic is this giant 18,000-element array. So forget about debugging it. If something comes out with the wrong answer, you will never figure out how that happened.

Rachael: [laughs]

Casey: So we bought the system, and it's like, what are we going to do with this? [laughs] We'll never make sense out of the code. It crashes constantly. Like, we had a thing where each of the instances would reboot once an hour because if we let it stay alive for more than an hour, it would just randomly crash. It was absolutely terrible. I imagine parts of that system are still there because it was just such a difficult tangle to unravel. Ultimately, what we ended up doing was we built out a cluster of Windows machines and used the actual Excel binary so that we could just load up the Excel spreadsheet directly and execute it instead of doing the nasty Perl thing. And that at least made it a little bit faster, and it didn't leak memory like crazy and crash all the time, but it was still awful. And then, we rewrote a Java Ant-based system for doing the actual assessment workflow. I'm going to cross my fingers and hope in the three years since I was there that somebody actually got around to convince that doctor to let them write that algorithm out in actual code and get rid of the Excel file. But we were having no luck with it when I was there.

Rachael: Most of the best applications start with Excel spreadsheets. But this is the first time I've heard of one that kept using it. [laughs]

Casey: It just kept going. I have to say, like, all of the systems that I have seen in my life, that was the one that I just sort of like, the jaw is hanging over and you just stare at it, and you don't have any comments. I don't have anything to say about this because, really, what I want to do is just scream and run from the room.

Rachael: You're just like...Oh, I can't even imagine. [laughs] That's amazing.

Casey: But some software architect looked at that problem of this algorithm is written in Excel. It's a huge Excel file that's impossible to decompose into an actual algorithm. And the doctor who is owning this wants to be able to go in and update the Excel spreadsheet anytime he needs to in order to update the algorithm. So we have to maintain the Excel file, and we have to make it work as a transactional system. How do we do that? And I will give him credit. He certainly came up with a very clever solution. Yeah, that was nuts. Everyone wanted to see that system die.

Rachael: [laughs]

Casey: Like, everyone wanted to see that system die, and no one could figure out how to kill it.

Rachael: That is beautiful and amazing. Thank you so much for joining us. Where can people find you? Do you want people to find you?

Casey: [laughs] If people want to find me, they're welcome to. I'm on LinkedIn. I don't really do much on social media. I think I'm just a little too old to have set my mind in that mindset. That's the problem of being around 26 years in this industry is like; there wasn't really an internet when I started.

Rachael: [laughs] Thank you so much for joining us. I really appreciate it, and I appreciate all of you for watching. Catch us on Google Podcasts, Spotify, Apple Podcasts, all of the regular places, and on therelicans.com. Thank you all so much.

Jonan: Thank you so much for joining us. We really appreciate it. You can find the show notes for this episode along with all of the rest of The Relicans podcasts on therelicans.com. In fact, most anything The Relicans get up to online will be on that site. We'll see you next week. Take care.
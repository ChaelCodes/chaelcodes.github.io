---
title: Slaying Dragons – Inside A Dark Room with Amir Rajan
category: podcast
description: Amir Rajan describes how DragonRuby live-reloads a game made in Ruby.
feature-img: /assets/img/podcasts/amirrajan_polyglot.jpg
image: /assets/img/podcasts/amirrajan_polyglot.jpg
layout: post
thumbnail: /assets/img/podcasts/amirrajan_polyglot.jpg
podcast_url: https://www.therelicans.com/mandymoore/slaying-dragons-inside-a-dark-room-with-amir-rajan-ga
excerpt_separator: <!--more-->
---
[Amir Rajan](https://twitter.com/amirrajan) is a hyperpolyglot with over 15 years of industry experience. Amir is also the creator of [A Dark Room iOS](https://apps.apple.com/us/app/a-dark-room/id736683061). This RPG conquered the world and took over the Number 1 spot in the App Store, and placed in the Top 10 paid apps across 70 countries. He's also the CEO of [DragonRuby LLP](https://dragonruby.org/), creators of [DragonRuby Game Toolkit](https://dragonruby.itch.io/dragonruby-gtk) and [RubyMotion](http://www.rubymotion.com/), which is what we're here to talk about today.
<!--more-->

- https://twitter.com/amirrajan
- https://amirrajan.net/
- https://dragonruby.org/
- https://discord.dragonruby.org/

> This podcast was released 06/16/2021 as part of the Polyglot Podcast - a series from The New Relic Relicans - both the series and team that created it have been dismantled. It was so much fun while it lasted, and I've recovered as much as possible from the Internet Archive.
>
> Huge Thanks to [Mandy Moore](https://mandymoore.tech/) who produced, edited, and put untold hours into this podcast. Without her work, the transcripts below (and episodes themselves) wouldn't have existed.

## Teasers

> Rachael: That's impressive. Can you tell me a little bit about why you felt zero dependency was so important?
>
> Amir: It's interesting that you said, “I feel like if you're going to get into development…” and maybe you have some thoughts on this also; if you want to get into development, then you have to roll up your sleeves and do it. And if that requires figuring out how to do a custom compilation of Gentoo to try to get something working, that's what you have to do, and you have to read the manuals and whatnot. And then I think over time, I just felt like it's not an empathetic approach. I remember being a kid and having to do this. And I mean, we were in 2020, it should be accessible, so much more accessible than it is. So that was one of the really important things that we wanted the runtime and the language to be accessible in so much that it runs on Raspberry Pi. Like, if you're a family or a kid that can't afford a computer or a laptop, you can pick up a Raspberry Pi and a monitor for $80, and you have something that can build a game. So that was really, really important just thinking back to why we went with that move.
>
> Rachael: I think I agree with you. I know that whenever I start a project or bring down a repo…so I often do open source Fridays where I'll be like, okay, this Friday, I'm going to pick up some random open source repo that I've never touched before. It often feels like I spend the first hour to two, even with Docker, even with setup guides and all that sort of stuff, just trying to get a working development environment.
>
> Amir: Yeah, and it’s, I guess the normalization of oh, we've got this Docker VM that you can -- It's like, my heart hurts [chuckles] that these repos have that heavy investment into getting started. And it's a necessary evil, I guess, with the complexity of software that we have today, but it's something we want to change.
>
> Rachael: But you made a deliberate choice to go against the grain and make sure that it had zero dependencies.
>
> Amir: Yes. And another thing that really inspired that was this podcast called 99% Invisible, and they talk about general design. And I didn't realize this, but do you know the curb cuts and handicap ramps that exist in the states today?
>
> Rachael: Yeah.
>
> Amir: They weren't around. This is a recent addition. And it took people in wheelchairs literally getting out of the wheelchair and clawing their way up the stairs of the Capitol building to get the states to mandate these curb cuts on the streets. The side effect, though, was that other people that didn't have these that weren't other-abled were able to benefit from it. Suddenly your mailman or, you know, a big package can be wheeled up through a wheelbarrow, or a mother with her child in a baby carriage can use those same curb cuts to make life easier. And that's what we found with DragonRuby, too, is that even with the zero dependency, with this empathy for beginner developers to get started, that in itself helped us because it made it so much more pleasant, and it exposed, I guess, a lot of pieces of machinery that would have been internal to the runtime to the “end-user” and by extension us and just made it easier on ourselves. And we never intended for it to happen, but it wouldn't have happened if we didn’t have that initial empathy. But yeah, it's a great podcast. So it was really emotional, and I think it left a lasting impact on me.
>
> Rachael: I really liked what you said about how improving the accessibility also improves everybody else's lives. I think that that's definitely something that's true within software. I want to pivot a little bit and ask you something. So I know DragonRuby focuses primarily on 2D games instead of 3D games. Can you talk through the decision-making and what drove that?
>
> Amir: So, I guess it's just another one of those philosophical aspects that these frameworks and products that are built have to be extracted from real-world things, and up until that point, I've only made 2D games. So I haven't actually made the jump into the 3D world, but I guess a sneak peek or a behind-the-scenes thing is that I have an Oculus Quest now, and I love that thing. So it is going to happen. [laughter] It's going to happen because I want to build cool things for myself. So the moment I got the Oculus Quest, it was like, oh my gosh, I need to make a 3D game.
>
> Rachael: [laughs]
>
> Amir: And then Ryan was like, “Nah, I don't like VR. It's stupid.” And I bought him one, and I sent him an Oculus Quest. And he said, “You sent me an Oculus Quest?” I said, “Yes, put it on. Try it.” And then the next day, he was like, “Oh my God, we got to make this happen.”
>
> Rachael: It’s so good. I remember the first time I ever tried it out. So my first VR headset was that silly little Google Cardboard. I went to a meetup, and somebody had one on hand, and I was like, okay. So I put my phone in it. And before then, I was the exact same way; I was like, what's the big deal? I can see it in a square. Why do I need to see it around me? But then I put it on my face, and it was like this tour of the Palace of Versailles. And the fact that I could look up just blew my mind. I did not understand before that moment that my peripheral vision had been so restricted by screens. [chuckles]

> Rachael: It sounds a little bit like the real problem here is that you don't have something like SDL or something like...I think you said the GCC compiler. You don't have something that makes it all consistent for all GPUs. Like, you don't have an abstraction layer.
>
> Amir: Yes. Well, we didn't have an abstraction layer up until maybe, I would say, a few months ago. That's the problem is that it's so new. So I'm sure you've heard of Vulkan. So Vulkan is this abstraction layer, and I think it's an NVIDIA technology. It's an NVIDIA tech. And they created this abstraction layer on top of shaders to allow for arbitrary targeting of GPUs. And when that came out, that's where with RubyMotion and DragonRuby Game Toolkit, we had to wait for Clang to take over the world before it could be applied to cross-platform implementation. We just had to wait for it, and the same thing has had to happen for the 3D stuff. And with the creation of Vulkan and this abstraction over these GPUs with a common language, now we can target it.
>
> Rachael: Wow.
>
> Amir: We don't have the capital. I mean, these large companies have the capital like, they can put 300 developers and target 300 graphic cards and make it work. But yeah, we just have to wait. The good thing is this accessibility for us also benefits these larger companies because now they're like, NVIDIA can create a new chip, and whatever language they use on their front end to create the shaders doesn't have to be changed. They can use these sub-components and these other hardware manufacturers and require them to have the little block that can be put into that infrastructure to spit out the right code for their processor.
>
> Rachael: That's interesting. You're right. This does tie into the accessibility thing earlier, where it's like DragonRuby is possible because of the accessibility these other companies are building in. That's cool.
>
> Amir: And the challenge with accessibility, I think it goes back to the 99% Invisible design podcast, is that it takes a governing entity sometimes to make this initiative occur. For curb cuts it was the U.S. government, for LLVM and Clang it was Apple taking over the world with the iPhone.
>
> Rachael: [laughs]
>
> Amir: And then for Vulkan, it took NVIDIA. And these are the companies that can influence that kind of change and effectively force the hand on their dependencies to play nice with them, but then everyone benefits.
>
> Rachael: Okay. That's just really cool. This is like an entire world of hardware and ships and companies that are putting in standards that I think I had never really thought about or heard about before.
>
> Amir: And you think like, well, why didn't anyone else do this? For CRuby, it didn't exist. The LLVM, this compiler infrastructure, and Chris Lattner and his ideas and his approach to rethink things and say, “We're not going to keep doing it the way we're doing it. Let me try something new,” it took that, in 2009, to get this ball rolling. And so it just didn't exist, and now it does, and that's the beauty of tech. And because it does, it lets a group of four people that are really sharp to benefit from everything out there. And the other interesting thing with this influence if you look at the LLVM mailing list to see these core contributors that are out there, it’s xx@microsoft.com, xx@netflix.com, apple.com, nintendo.com, sony.com. And this interesting dynamic of the open-source being part of it that lets these large companies leverage this tech and benefit from our companies too. At the same time, they “own” the people that can actually work on the tech. There are so few people that have the propensity and the skills to work on this. So you have maybe 15 people in the entire world that have the ability to create that kind of compiler, and they're all employed by the largest companies out there.
>
> Rachael: And those companies can then drive the future of that.
>
> Amir: Right. And then there’s another aspect that it's all open source. So whatever's created has to be released back out for consumption and because every company has a hand in this game…maybe Google, from a legal standpoint of proprietary software can take on Apple one-on-one, but Apple cannot take on Netflix, Google, Microsoft, Nintendo, Sony, all of them coming after them and vice versa. So there's almost like a power struggle at the lowest levels, and these developers just work on these foundational components, and they get paid very well. And these companies are like, “Just go work on this stuff and make sure it continues working.” It's very odd. It's a very weird lens that I'm seeing open source through now, and I don't know how to feel about it. [laughs]
>
> Rachael: I think it's beneficial first of all because the software itself is more accessible, right?
>
> Amir: Yes.
>
> Rachael: You know what's running in it, and that accessibility is what allows organizations like DragonRuby to exist and to utilize all of these standards. It's good for the companies because they're able to say, “We have this standard; everybody can use this standard because we've made it open-source, and it technically doesn't belong to us.” Because the other option there is to have a copyrighted specification and either force that on people or charge them if they try to use your specification.
>
> Amir: And the enforcement of that is because big companies -- it's like mutual assured destruction. It's like we all have to play by these rules because if one company does not, we can't benefit from that one company's enhancements to their code, so we're going to take action and make sure that that comes out. So it's a weird dynamic. Yeah, it's just interesting. So the website is called llvm.org, and that's the same infrastructure that we're talking about that allows for arbitrary targeting of chipsets and architectures. And I think I would love to see a world where computer literacy was just as if it was reading. If computer literacy was like reading literacy, the weird dynamic that currently exists in open source would go away because anyone can jump into llvm.org and can work on this too. But yeah, it's a specialization that currently exists that few people are aware of. As you mentioned, you were surprised that this was happening. And yeah, it exists and continues to exist that way.

> Amir: We just take a lot of good ideas from other languages. That's what we did.
>
> Rachael: [laughs]
>
> Amir: All the good ideas that happened over the twenty-five years we just went, “These are good ideas. We should totally just take them”
>
> Rachael: [laughs] Ruby did the same thing with Rust. Ruby was like, “Okay, small talk, what do you have in your box?” [chuckles]
>
> Amir: Yeah. And now it's like, okay, we've got Ruby, we've got Clojure. Clojure did some good things, Node.js did some good things. C#, C++, they all did good things. And it was like; we’re going to take these little pieces and make a new thing. And people are like, “This is weird.” It was like, it’s all the good things.
>
> Rachael: Keep Ruby weird.
>
> Amir: Yeah, I’m seeing new people use the runtime because these are game devs that only use C, C++, C#; that’s all they knew. And now they're using Ruby, and they're like, “This language is beautiful.” I consistently hear that. And it feels so good to hear that again, to hear someone say this language is beautiful and they can't explain why. But they say, “This language is beautiful.”

## [Full Transcript](https://web.archive.org/web/20220706125732/https://www.therelicans.com/mandymoore/slaying-dragons-inside-a-dark-room-with-amir-rajan-ga)

Jonan Scheffler: Hello and welcome to Polyglot, proudly brought to you by New Relic's developer relations team, The Relicans. Polyglot is about software design. It's about looking beyond languages to the patterns and methods that we as developers use to do our best work. You can join us every week to hear from developers who have stories to share about what has worked for them and may have some opinions about how best to write quality software. We may not always agree, but we are certainly going to have fun, and we will always do our best to level up together. You can find the show notes for this episode and all of The Relicans podcasts on developer.newrelic.com/podcasts. Thank you so much for joining us. Enjoy the show.

Rachael Wright-Munn: Hello and welcome to the Polyglot. Today we're joined by Amir Rahan. Amir is a hyperpolyglot with over 15 years of industry experience. Amir is also the creator of A Dark Room iOS. This RPG conquered the world and took over the Number 1 spot in the App Store, and placed in the Top 10 paid apps across 70 countries. He's also the CEO of DragonRuby LLP, creators of DragonRuby Game Toolkit and RubyMotion, which is what we're here to talk about today. So if I understand correctly, A Dark Room was created in DragonRuby.

Amir Rajan: Yes. So the entire story there was it was actually a web-based game, and around 2013 I got really burned out on corporate app development, and so I took a sabbatical, learning sabbatical, whatever you want to call it. I was lucky enough to be able to put aside the money to do that. And I reached out to Michael Townsend about this web-based version, this io game that he created. And I was like, “Okay, well, can I port this over to iOS? If we make any money, we can split it fifty-fifty.” And at that point, Michael said, “Yeah, sure. Let's do it.” And then I think it was four months later -- It was built on RubyMotion at the time, it still is actually. Laurent Sansonetti was the original creator of RubyMotion. And I wanted to use Ruby. Objective-C is a nice language, but I really love Ruby. It was one of the reasons why I actually went on sabbatical. And I used RubyMotion to build A Dark Room iOS. We put it in the App Store, and on the first day in the App Store, it got 36 downloads. It was awesome.

Rachael: That's impressive.

Amir: It’s great. It really is. From a small business standpoint, I love the aspect that we were making money on the first day. But then, five months later, out of nowhere, it goes viral, and it's in the number 1 spot. So A Dark Room iOS is both RubyMotion, and it's an adaptation of the web-based version with my own pacing and narrative changes. And then, in 2016 is when Laurent pushed me to acquire the company. And I took the company over, and then I've been expanding it ever since. And I now have five properties in the App Store. And I'm also on Nintendo Switch and on Android because of all the initiatives and expansions that the runtime has created.

Rachael: I'm actually really curious about that. What is the process for taking a runtime in one language and porting it so that it works in multiple consoles?

Amir: It's really hard. [laughter] I think it's important to separate the idea of a runtime in a language. And usually, in the context of Ruby, when people say Ruby, what they really mean is the Ruby specification with the runtime being CRuby. CRuby used to be called MRI, Matz's Ruby Interpreter, but over time, it changed its name to CRuby. So the language spec is Ruby, and the runtime implementation is CRuby. Another example would be Ruby and JRuby; then you have TruffleRuby. You've got Artichoke, and DragonRuby is another implementation. So when you look at a language spec, you can actually use a lot of what's already out there. So mruby is also another implementation of Ruby. And essentially, your language specification is something…it learns something called Yacc or Bison. Those are compiler-compiler, Yet Another Compiler-Compiler. And you can use those grammars to figure out what the language should look like, and that's what we did.

Then now, the question is that well, how do you actually make it work on all these platforms? And then that's where the runtime comes in, and that's where things like the core library comes in. So when you do file.read on MRI Ruby; it’s using OS-specific things to read the file. It gets tricky when you start saying, okay, well, how do I read a file on a mobile device? What does that even look like? What does the operating system give me access to? Do they even have a consistent file system? The same thing with consoles; consoles effectively work the same way. So the implementation of file.read has to work everywhere, and that is where the challenge is that well, how do we make this work everywhere? For those that use Ruby a lot or any language, really, if they have an open-source implementation, I would strongly recommend just trying to go to the open-source repo and try and compile it. Try and see if you can compile the language, and I think you get a lot of visibility. It's empowering to get even a language compiling, and then you can look at, well, how did they do? How did they implement file.read in a specific language? And so that's a lot of the things that we had on our end. Another challenge with a lot of the runtime aspects if you think about the data constructs of an array or a hash, you'll have situations where they'll use standard C libraries, and now you're in the same situation. It's like, does this standard C library even exist on the specific platform? When it comes to Wasm and scripting, do you have access to the C library or a construct of this? So those were a lot of the challenges coming in with regards to a runtime.

Rachael: How do you make that seamless for the user so that they don't even notice it?

Amir: A lot of that comes from having access to these platforms that we can actually test on. And then, from there, a part of the challenge is exactly to make it seamless for the user. And again, it depends on your implementation of the runtime. So if you think about JRuby, you've got to have the JVM; it's a dependency. If you think about MRI Ruby or CRuby, there are additional dependencies that need to be installed, MinGW-64 for Windows. So there are standard C libraries and things that have to be there for these runtimes to work, and that was one of the big tenets of DragonRuby, especially the game engine, was that we wanted the install to be zero dependency. So you download a zip, you double-click, you unzip the file, and you double-click the .exe, and that's it. There's no other subsequent install step. And a lot of that comes from making sure that everything that we use is portable in nature. So we actually lucked out there. There's actually a really, really great cross-platform console compatible portable thing that already exists; it’s existed for over 20 years, and it's called SDL, which stands for Simple DirectMedia Layer. And Ryan Gordon was one of the original core contributors to SDL. And what SDL is it's this abstraction of the operating system. And what happened was that it took off during the early days of game development and to the point where Valve actually used it. They used it for Steam; their entire Steam stuff is built-in SDL. So if you use their Steam desktop app, a lot of that is written in that. And they essentially sponsored the creation and maintenance of this library over a 20-year period. So that's what we did.

Rachael: That’s amazing.

Amir: And that's what we did. We're like, okay, well, we have all these issues with interacting with the OS in different ways. Why don't we just rip all the custom code that exists in all these runtimes and just use SDL?

Rachael: [laughs]

Amir: So your dependency is on SDL, but SDL is portable. And then, because of that portability and because we do not depend on anything on the operating system, we can compile that to a single executable that just works. And Ryan is one of the partners we were talking to each other, and we're like, “Why hasn't anyone done this? Why?” And we didn't really have an answer. [laughter] The only other thing was that people didn't want to take a dependency on SDL.

Rachael: I feel like this is one of the amazing things about open source is the fact that this huge organization like Valve and Steam had a need for a cross-platform tool that could be used to interface with all these things you need to interface with in games. So they sponsored the development of an existing tool, I'm assuming.

Amir: Yes.

Rachael: And now as the CEO of DragonRuby, as part of RubyMotion, and part of that, you can actually use that same tool that has had another company actively developing on it.

Amir: Yeah, absolutely.

Rachael: And because it's shared…Steam and DragonRuby aren't really competitors, but you're able to pull resources and work on this thing together to improve it.

Amir: Oh yeah, absolutely. And the mini and the retro consoles that came out from Nintendo had the mini NES, and that's all powered by SDL.

Rachael: Oh yeah. Wow.

Amir: Nintendo's got an investment into it. Their entire world basically runs on this library. And so yeah, we didn't see any reason why we shouldn't take a hard dependency on it because of all the benefits you get from that. And so that was our secret sauce that made this happen. Two years later, we finally got it. [laughter] It’s like, and then after two years of development, we got to a nice experience where the user doesn't have to go and do all those things.

Rachael: That's impressive. Can you tell me a little bit about why you felt zero dependency was so important?

Amir: It's interesting that you said, “I feel like if you're going to get into development…” and maybe you have some thoughts on this also; if you want to get into development, then you have to roll up your sleeves and do it. And if that requires figuring out how to do a custom compilation of Gentoo to try to get something working, that's what you have to do, and you have to read the manuals and whatnot. And then I think over time, I just felt like it's not an empathetic approach. I remember being a kid and having to do this. And I mean, we were in 2020, it should be accessible, so much more accessible than it is. So that was one of the really important things that we wanted the runtime and the language to be accessible in so much that it runs on Raspberry Pi. Like, if you're a family or a kid that can't afford a computer or a laptop, you can pick up a Raspberry Pi and a monitor for $80, and you have something that can build a game. So that was really, really important just thinking back to why we went with that move.

Rachael: I think I agree with you. I know that whenever I start a project or bring down a repo…so I often do open source Fridays where I'll be like, okay, this Friday, I'm going to pick up some random open source repo that I've never touched before. It often feels like I spend the first hour to two, even with Docker, even with setup guides and all that sort of stuff, just trying to get a working development environment.

Amir: Yeah, and it’s, I guess the normalization of oh, we've got this Docker VM that you can -- It's like, my heart hurts [chuckles] that these repos have that heavy investment into getting started. And it's a necessary evil, I guess, with the complexity of software that we have today, but it's something we want to change.

Rachael: But you made a deliberate choice to go against the grain and make sure that it had zero dependencies.

Amir: Yes. And another thing that really inspired that was this podcast called 99% Invisible, and they talk about general design. And I didn't realize this, but do you know the curb cuts and handicap ramps that exist in the states today?

Rachael: Yeah.

Amir: They weren't around. This is a recent addition. And it took people in wheelchairs literally getting out of the wheelchair and clawing their way up the stairs of the Capitol building to get the states to mandate these curb cuts on the streets. The side effect, though, was that other people that didn't have these that weren't other-abled were able to benefit from it. Suddenly your mailman or, you know, a big package can be wheeled up through a wheelbarrow, or a mother with her child in a baby carriage can use those same curb cuts to make life easier. And that's what we found with DragonRuby, too, is that even with the zero dependency, with this empathy for beginner developers to get started, that in itself helped us because it made it so much more pleasant, and it exposed, I guess, a lot of pieces of machinery that would have been internal to the runtime to the “end-user” and by extension us and just made it easier on ourselves. And we never intended for it to happen, but it wouldn't have happened if we didn’t have that initial empathy. But yeah, it's a great podcast. So it was really emotional, and I think it left a lasting impact on me.

Rachael: I really liked what you said about how improving the accessibility also improves everybody else's lives. I think that that's definitely something that's true within software. I want to pivot a little bit and ask you something. So I know DragonRuby focuses primarily on 2D games instead of 3D games. Can you talk through the decision-making and what drove that?

Amir: So, I guess it's just another one of those philosophical aspects that these frameworks and products that are built have to be extracted from real-world things, and up until that point, I've only made 2D games. So I haven't actually made the jump into the 3D world, but I guess a sneak peek or a behind-the-scenes thing is that I have an Oculus Quest now, and I love that thing. So it is going to happen. [laughter] It's going to happen because I want to build cool things for myself. So the moment I got the Oculus Quest, it was like, oh my gosh, I need to make a 3D game.

Rachael: [laughs]

Amir: And then Ryan was like, “Nah, I don't like VR. It's stupid.” And I bought him one, and I sent him an Oculus Quest. And he said, “You sent me an Oculus Quest?” I said, “Yes, put it on. Try it.” And then the next day, he was like, “Oh my God, we got to make this happen.”

Rachael: It’s so good. I remember the first time I ever tried it out. So my first VR headset was that silly little Google Cardboard. I went to a meetup, and somebody had one on hand, and I was like, okay. So I put my phone in it. And before then, I was the exact same way; I was like, what's the big deal? I can see it in a square. Why do I need to see it around me? But then I put it on my face, and it was like this tour of the Palace of Versailles. And the fact that I could look up just blew my mind. I did not understand before that moment that my peripheral vision had been so restricted by screens. [chuckles]

Amir: It is so beautiful. And so when that happened, that's when we were like, we need to make this happen. So there are obvious challenges with going 3D because up until this point (let's get into some of the technical aspects of the implementation of runtime and rendering) is that you've got effectively a chipset architecture that you have to target. And we gain the benefit of portability through a new compiler, “new compiler,” that came out called Clang, and Clang is a C compiler. It's effectively a competitor to GCC and then the compiler provided by Microsoft for their Windows platform. And what happens is that the compiler was partitioned in such a way that new hardware could be, I guess, retrofitted into the compiler without the effort being on the front-end language developers to do that. So this opened up amazing capabilities and one of the reasons why the M1 Chip was actually possible to do for Apple. So Apple actually hired Chris Lattner, who was part of MIT, or he went to MIT, and he was working on this new approach to compilers. So they hired him. They made the iPhone using this compiler. And then, when the iPhone blew up, all the hardware manufacturers wanted in on the action. But Apple put down a mandate “If you want us to use your user hardware, it has to work with this compiler.”

And then, ten years later, it's taken over the world because it's the go-to thing to go to now. The last holdout was actually Microsoft with their implementation of .NET core, which uses the same library. At the end of 2019, they've effectively completed their release to market for that. So by 2020, the entire world is using this compiler. And now you have this compiler infrastructure that helps us not deal with the computer chips on the hardware itself. Now the challenge that comes is how do you do this for GPUs? So GPUs have their own chipset architecture, and they lagged behind actually, and they don't all use Clang until recently. So now we're in the situation where yes, we can leverage Ruby and leverage these compilers to make programs that can be invoked on a GPU. And with that feasibility in place, now we can approach 3D games. And the interesting thing with GPUs is that...do you know what a shader is, like a pixel shader and stuff?

Rachael: Yes, but let us elaborate for the audience.

Amir: Yeah, I think that’s a good idea. I don't even understand it, actually. [laughter] It’s like I only understand parts of the shader stuff, but the simplest shader that I can think of is the pixel shader. And the most straightforward terms I can think of is that if you have a 600 x 400 screen and that's powered by a GPU, you have so many pixels that have to be colored in. The GPU allows you to invoke a function in parallel on all those pixels to draw on the screen. The caveat and the constraints of invoking that function is that it can't use any kind of shared state. It's passed in just enough information to do what it needs to do, and then based on the information, you got to figure out the rest. So usually, the information is like the current color of the pixel and maybe some additional pieces of metadata. It's very limited.

Rachael: Okay. So that's more than I knew about shaders. [chuckles]

Amir: But that's how they work. The beauty of it is that you're limited to a really small dialect of a language, but you get effectively parallel drawing on the screen, which is very powerful. And so now that we have access to that, now the question becomes how do we enhance the runtime to work with a language that is unlike anything that we've used for programming. This is a highly parallel, almost a domain-specific language. It's not even really C. You can't even really call it. It looks like C, but it isn't. So then, how do you take existing shader libraries out there and apply it in such a way that it can work on the hardware that you need for that? And so that's our current challenge, and it's difficult. Unfortunately, it just comes down to looking at these languages and parsers and how they're implemented and what parts are platform-specific versus what parts are generalized enough to where we can carve it out and actually target this generic shader format. But those are the challenges we have to deal with.

Rachael: It sounds a little bit like the real problem here is that you don't have something like SDL or something like...I think you said the GCC compiler. You don't have something that makes it all consistent for all GPUs. Like, you don't have an abstraction layer.

Amir: Yes. Well, we didn't have an abstraction layer up until maybe, I would say, a few months ago. That's the problem is that it's so new. So I'm sure you've heard of Vulkan. So Vulkan is this abstraction layer, and I think it's an NVIDIA technology. It's an NVIDIA tech. And they created this abstraction layer on top of shaders to allow for arbitrary targeting of GPUs. And when that came out, that's where with RubyMotion and DragonRuby Game Toolkit, we had to wait for Clang to take over the world before it could be applied to cross-platform implementation. We just had to wait for it, and the same thing has had to happen for the 3D stuff. And with the creation of Vulkan and this abstraction over these GPUs with a common language, now we can target it.

Rachael: Wow.

Amir: We don't have the capital. I mean, these large companies have the capital like, they can put 300 developers and target 300 graphic cards and make it work. But yeah, we just have to wait. The good thing is this accessibility for us also benefits these larger companies because now they're like, NVIDIA can create a new chip, and whatever language they use on their front end to create the shaders doesn't have to be changed. They can use these sub-components and these other hardware manufacturers and require them to have the little block that can be put into that infrastructure to spit out the right code for their processor.

Rachael: That's interesting. You're right. This does tie into the accessibility thing earlier, where it's like DragonRuby is possible because of the accessibility these other companies are building in. That's cool.

Amir: And the challenge with accessibility, I think it goes back to the 99% Invisible design podcast, is that it takes a governing entity sometimes to make this initiative occur. For curb cuts it was the U.S. government, for LLVM and Clang it was Apple taking over the world with the iPhone.

Rachael: [laughs]

Amir: And then for Vulkan, it took NVIDIA. And these are the companies that can influence that kind of change and effectively force the hand on their dependencies to play nice with them, but then everyone benefits.

Rachael: Okay. That's just really cool. This is like an entire world of hardware and ships and companies that are putting in standards that I think I had never really thought about or heard about before.

Amir: And you think like, well, why didn't anyone else do this? For CRuby, it didn't exist. The LLVM, this compiler infrastructure, and Chris Lattner and his ideas and his approach to rethink things and say, “We're not going to keep doing it the way we're doing it. Let me try something new,” it took that, in 2009, to get this ball rolling. And so it just didn't exist, and now it does, and that's the beauty of tech. And because it does, it lets a group of four people that are really sharp to benefit from everything out there. And the other interesting thing with this influence if you look at the LLVM mailing list to see these core contributors that are out there, it’s xx@microsoft.com, xx@netflix.com, apple.com, nintendo.com, sony.com. And this interesting dynamic of the open-source being part of it that lets these large companies leverage this tech and benefit from our companies too. At the same time, they “own” the people that can actually work on the tech. There are so few people that have the propensity and the skills to work on this. So you have maybe 15 people in the entire world that have the ability to create that kind of compiler, and they're all employed by the largest companies out there.

Rachael: And those companies can then drive the future of that.

Amir: Right. And then there’s another aspect that it's all open source. So whatever's created has to be released back out for consumption and because every company has a hand in this game…maybe Google, from a legal standpoint of proprietary software can take on Apple one-on-one, but Apple cannot take on Netflix, Google, Microsoft, Nintendo, Sony, all of them coming after them and vice versa. So there's almost like a power struggle at the lowest levels, and these developers just work on these foundational components, and they get paid very well. And these companies are like, “Just go work on this stuff and make sure it continues working.” It's very odd. It's a very weird lens that I'm seeing open source through now, and I don't know how to feel about it. [laughs]

Rachael: I think it's beneficial first of all because the software itself is more accessible, right?

Amir: Yes.

Rachael: You know what's running in it, and that accessibility is what allows organizations like DragonRuby to exist and to utilize all of these standards. It's good for the companies because they're able to say, “We have this standard; everybody can use this standard because we've made it open-source, and it technically doesn't belong to us.” Because the other option there is to have a copyrighted specification and either force that on people or charge them if they try to use your specification.

Amir: And the enforcement of that is because big companies -- it's like mutual assured destruction. It's like we all have to play by these rules because if one company does not, we can't benefit from that one company's enhancements to their code, so we're going to take action and make sure that that comes out. So it's a weird dynamic. Yeah, it's just interesting. So the website is called llvm.org, and that's the same infrastructure that we're talking about that allows for arbitrary targeting of chipsets and architectures. And I think I would love to see a world where computer literacy was just as if it was reading. If computer literacy was like reading literacy, the weird dynamic that currently exists in open source would go away because anyone can jump into llvm.org and can work on this too. But yeah, it's a specialization that currently exists that few people are aware of. As you mentioned, you were surprised that this was happening. And yeah, it exists and continues to exist that way.

Rachael: I think that computer literacy is actually increasing, and I'm excited about this because one of the things that I'm seeing is that they're starting to teach programming in high schools. You mentioned that DragonRuby makes it possible for somebody with a Raspberry Pi to go in and create a game for the first time. I actually taught in a middle school coding bootcamp, and these students would just pull up Scratch, and they would have something created within minutes.

Amir: Yeah, that’s great.

Rachael: And I think if you start by enabling people to create things and see the results of what they've written, there's no doubt that they'll continue to follow along that track.

Amir: Absolutely.

Rachael: This is a little bit of a sidetrack.

Amir: No, we really care about this stuff too. That's why we made it work on Raspberry Pi. And we don't have a free version of the software, but we can say, “If you're trying to teach your kid to code, just send me an email and tell me how many licenses you want me to get them, just do it.” And I send them a link to an Amazon shopping cart that's like, “You can buy this, and this is the cheapest thing if you’re going to create a Dev Box box for your kid.” And it’s very, very important to us. It's really important to us.

Rachael: That's amazing. I see technology as an accelerant. And whatever industry you're in, whether it's taxes, whether it's accounting, whether it's collecting marketing information on various individuals, whether it's philanthropic works, science like observation, whether it has to do with -- If you think about it, the original version of shaders was somebody literally saying, “Okay, so if the sun is here and this object is here, where is the shadow cast? And how does that impact the light?” and someone manually drawing that. And we've managed to facilitate that through technology. And I see the world moving to a place where everything is facilitated, and every job is really about building technology that facilitates your own job.

Amir: Yeah. And I hope over time, it becomes less foreign that it's just like reading an email, and we need that to happen. And this got me looking at historically how literacy spread and what power dynamic existed when literacy was really low. Did that mean who controlled the “world”? Obviously, there’s not enough time to dig in, but that's one of the things that I wanted to look at is reading literacy as a technology. It's a rudimentary technology, and now we've advanced to the point where we can control a general computing machine. And what does the world look like today? And what could it look like once it's as normal as reading an email?

Rachael: Okay. This makes me curious now. So you are an acclaimed game dev, and you just talked about how literacy impacts the world. We just talked about how programming impacts the world. Where do you think games fit into that? How do they do that, and what do they communicate to people?

Amir: I've struggled with this for a long time, trying to understand where games fit in. And the short version is that I think games are an artistic medium, no different than film, no different than a painting or a book. And they're effectively that. And that's what separates them from more conventional software or bodies of knowledge that have a certain level of precedence. And with games, it's double-edged for that reason: it's a place or a source of innovation. It's also a source of a lot of stupid ideas. [laughter] But games fit in from a more practical standpoint, “practical standpoint” being a source of innovation. If you think about React, the whole concept of requestAnimationFrame and treating the view as an increment of time and the view refreshing it as fast as possible is what games do today. They've always done this. That's how they render views. And so taking that approach to rendering WebViews was directly pulled from how games rendered was this concept of every 60 Hertz, you render the view. And so flipping everything that we know about web rendering on its head, games provided that point of evolution. Games have also provided the evolution of telemetry for better or worse [laughter] because you have companies like King now with Candy Crush; Liveops is a very real thing. How do you get people to convert and buy that in-app purchase that lets them continue playing?

Rachael: Ooh.

Amir: And so all these innovations that were pushed were because of video games. Call of Duty, the well-known multiplayer capabilities that exist there, and the latencies that you have, they used Erlang for that. They had to figure out infrastructure that allowed for 24 people online for a high fidelity 3D game that tracks bullets, and games pushed that innovation. But aside from the innovation, I see it as an artistic medium, too. It's important because we spend all our leisure time consuming it and having one more thing to consume is good for us. It's very, very important. And the problem, though, is that it's a young world. If you think about movies when they first came out, you had comedies and tragedies or just playwrights. You had comedies and tragedies, and that was it. Now we have all these genres. Games today are still in that young area where it's all about; well, if it's not a first-person shooter, it's not fun. Or the game has to be fun. It's like, well, the game can evoke other emotions, right? Schindler's List is not a fun movie. [laughs]

Rachael: I completely agree with this. Have you seen Depression Quest before?

Amir: Yes, Zoë Quinn. Depression Quest and its rise to the top actually happened around the same time as A Dark Room.

Rachael: What?

Amir: Yeah. So we actually exchanged quite a few emails figuring it out. We were exploring. We were finally getting a taste of what games could look like outside of just “fun.” So I’m very much aware of Depression Quest.

Rachael: Depression Quest, for those of you listening at home, is this game where you experience these different events that happen, and you have to take care of yourself and try to get yourself out of depression. But as you make decisions that lead you down a path towards more depression-like declining therapy, not taking care of yourself, you start to lose some of the options that would allow you to escape depression or treat or manage your depression. And so it's this game that really puts you in that mindset and that feeling, and it's not a nice feeling. It's not a happy feeling.

Amir: Yeah, I agree. And that's what I see with art is that the definition of art is the creator has an intent and an emotion they're trying to evoke in the consumer, and the consumer feels that emotion. So high-quality art is what the creator wants to evoke and is actually felt by the consumers. And yeah, games are just young. All we have now are strategy games and comedies. And over time, I'm hoping that expands, and things like Depression Quest are exactly those points of expansion.

Rachael: I think we've got a fair few other ones out there. Like, you've got simulations and stuff like that. How do those fit into it?

Amir: Yeah. So, there are simulations that have nothing to do with distraction SimCity was approaching that. The Sims is actually a great one, except I like putting them in a box and then not giving them access to a bathroom and seeing what they do.

Rachael: [laughs]

Amir: Have you heard of...you got those interactive fictions, which is like a story --

Rachael: Oh yeah.

Amir: So that's another exploration and your walking simulators. People don't call those real games, but of course, they are real games.

Rachael: Firewatch is 100% a real game. It’s so gorgeous.

Amir: I love Firewatch. It is such a wonderful game. It really is. Have you played the entire game?

Rachael: Yeah.

Amir: So did you know that you don't have to walk up to the helicopter at the end? It will actually fly away. You can make that choice to just stand there.

Rachael: Wooow. I don't think I've ever done that. I think I knew that, but I don't think I’ve ever done that.

Amir: So contextually, the entire story that you felt throughout that entire experience for me, it put me in that situation where I was like, I don't think I want to get on the helicopter even though everything's happening in the context of this game and what I felt and what the protagonist went through, right? Yeah.

Rachael: [laughs] I must have played that game very differently from how you played it. I played it, and I was like, let's flirt with our bosses. Let's wander through the woods and have a great time and heal from the trauma.

Amir: Yeah, he was trying to heal from the trauma, but he didn't heal.

Rachael: Yeah, I guess he didn’t heal. [laughs]

Amir: Yeah, he was like, “Okay, bye. It was nice talking to you over this.” I was like, “What? What do you mean?”

Rachael: [laughs]

Amir: And then what he experienced seeing the tragedy that fell on within this story.

Rachael: That was a brilliant scene.

Amir: Yes, it leaves a lasting impression. And I'm hoping to see more of that. And I feel that that is something that's more important that games can offer us than the technical aspects.

Rachael: Absolutely. Can I ask how do you, as a game designer, think about evoking those feelings?

Amir: For me, those experiences are important to me because, given all of those skills, you got to be multifaceted to build a game by yourself. And this is one of the skills that I have relative to the other ones. So I wish I could do amazing spread animations that you see in Hyper Light Drifter, I can't. So I can either spend a lot of time trying to figure that out, or I can just play to my strengths. So for me, it's important because it's one of the few strengths I have is this narrative type of experiences and all the games that I've built except for one, which was more like strategy and that kind of thing. But all my games have been these narrative evocative experiences, bitter-sweet stories that hopefully make you think. A Dark Room was about this feeling of loss. The end scene was cognitive dissonance. So yeah, that's what it involves.

Rachael: You said you have five priorities.

Amir: Five properties, yeah. So I have A Dark Room, which was the first game that I built after that is The Ensign, which is a pre-sequel to A Dark Room. I have A Noble Circle, which is an adaptation of Edward Abbott’s satirical novella Flatland that I put inside of the 21st century. So instead of talking about Versailles, I talk about today's day and age in the 2D world.

Rachael: Wait, Flatland is the one where the shapes are communicating with each other, and it's all about math.

Amir: Yeah, yeah.

Rachael: And you've edited it into the 21st century.

Amir: And I built a satire around it. I even explained Planck length and the size of the universe within the video game.

Rachael: Okay, wow.

Amir: It's a satire. It's a 2D, obviously. It’s Flatland, and it’s 2D. It’s a 2D “platformer.” So you're being ostracized for being a circle because you don't have points. So if you don't have points, you're not sharp, and you're not a weapon, and you're not strong, so because you don't have points, you're seen as an outcast. So you try to escape and eventually go through these different two-dimensional provinces, each with their own specific flaw. And yeah, that’s Flatland.

Rachael: Okay. You're going to have one more download. [chuckles]

Amir: Yeah. I have a Beautiful Go, which is just a digital Go board. I love the game of Go. I wanted to get into it. So I wanted a nice digital Go board. And then the final one is called Mildly Interesting Real-time Strategy, and it’s MIRTS; MIRTS is the short version. And it was because I love real-time strategies, and I don't have the time to invest in them. So I wanted something bite-sized that I can play on my phone, and so I bought that. So those are the five properties that I've built so far. And with five properties, there's a lot of upkeep, so then I had to figure out how to stay productive with this upkeep. And then there's DragonRuby, and that's what forced that; how do you stay small with all these “legacy software”? It has created legacy, and the solution as to the way you remain productive is to capture all the things that you've learned and solidify it into a product that continues to allow me to stay fast. So my journey started in 2013, but it wasn't until 2019 till the game engine was released.

Rachael: What is it that enables you to stay fast? What is it about the language? I'm not sure whether to call DragonRuby a language or a framework.

Amir: So DragonRuby is the runtime. Ruby is the language. Game Toolkit is a library on top of the runtime.

Rachael: Okay, so no framework got it.

Amir: You can think of Game Toolkit as a framework, framework, library, whatever you want to call it. But that's what it took was that I needed to be able to target more platforms. Okay. Well, what is that going to take? Well, that's going to take runtime, and I want to be able to use a language that lets me be productive. That language is not C#; it’s not C++, it's not Python. It’s Ruby. So that's what we chose. And then, I want to be productive in the context of game development, and that's where Game Toolkit comes in. So you have the portability that -- you have the beauty and the productivity of the language. You've got the runtime that allows me to not have to write OS-specific code. Then if it's an iOS iPhone, do this; if it's a Windows machine, change the forward slashes into backslashes. If it's this other thing…so that's where you get the productivity gains there. And then the engine itself or the library, the framework Game Toolkit, is what streamlines the process of publishing a cross-platform game and prototyping and building.

Rachael: You mentioned building it once and not having OS-specific, but what about different modalities? How do you manage having something that works both in a web browser and on a Switch?

Amir: The beauty of that is that 720P-1, the resolution race.

Rachael: But what about the inputs?

Amir: The inputs are generalized. So the custom code that you have to write is for additional progressive enhancement, not low-level working software. So a touch is like a mouse tap, a click on the mouse. So if you code for click, it will be click, touch, tap. Nintendo Switch tap, PS4, weird touch area, tap. It translates. Now, if I'm going to use the HD rumble cable in Switch, you have additional code for that, but that's the progressive enhancement. You're not trying to get your baseline experience working across platforms. And so that's what the Game Toolkit effectively guarantees. When you say you want to save a file, you don't have to worry about what OS it is. It will persist that data in the right way to disk, and when you read that data, you will get it back. When you want to make an HTTP request, it will work. When you want to host in an embedded web server, we can run embedded web servers in DragonRuby without any external dependencies. It will do it. And you can accept HTTP requests. So we give you that baseline experience, and then it's up to you to enhance your specific environment however you want.

Rachael: Okay. At this point, I'm just going to derail the podcast a little bit for my own interest.

Amir: That’s totally fine.

Rachael: WebAssembly, how do you embed a Ruby game using WebAssembly in a webpage?

Amir: And that's the beauty of LLVM. And what happened in 2020 was that Wasm ended up being a back-end target for LLVM. So they changed the compilers into two pieces. You have a front-end compiler and a back-end compiler. So a high-level language developer and implementer has to implement the front-end compiler.

Rachael: And that's the part that DragonRuby does.

Amir: Yeah, so DragonRuby and the Ruby source code that you write and the C source code that you write, we have a compiler that converts that into a common language that both front end and back end compilers top, so it transfers into intermediate representation. So LLVM IR is what we do. And then, the back-end implementers, the hardware manufacturers end up writing the back-end compiler. So what Wasm did was they were like, “Well, can't we be a back-end compiler?

Rachael: [laughs]

Amir: That targets a virtual machine called a web browser?” And that's what they did. So Wasm is a backend compiler for LLVM. And because as a front-end compiler, I just have to target architecture, Wasm winds up being a back-end architecture. And so we just target it, and we get something that is a binary that can embed into a canvas on a webpage.

Rachael: I'm trying to figure out if I can embed this in a static site. It’s sounding like I can.

Amir: Yeah. I mean, fiddle.dragonruby.org is just that S3 instance. It's embeddable.

Rachael: This is really cool.

Amir: It's completely embeddable, yeah.

Rachael: That's interesting.

Amir: And the file is abstracted, right? You persist a file; it knows to go to isolated storage.

Rachael: Wow. I assume that you would lose, say, files, but you're telling me that it just understands where it should natively be stored, and the developer doesn't have to think about that. All the developer has to think about is working within the construct of the Game Toolkit.

Amir: And the runtime.

Rachael: And the runtime.

Amir: Yes. So the Game Toolkit is going to give you game-specific APIs. And then, the runtime is going to give you core APIs that are different than what exists in MRI that are different than those that exist in JRuby. The required statements in our runtime are async. They're non-blocking, and people go, “That's insane.” It's like, that's how we have to do that. That's the constraint of our runtime. So your required statements are not blocking. It's like, no, because we have an event loop…that's another thing about runtime is that the way we do async. We don't use promises or callbacks or fibers or anything; it's an event loop. So you issue an async request, and then you just pull for completion once complete. So you get more like a Message Bus instead of this async await or a promise structure that has evolved from other languages. And that's the context of the runtime.

Rachael: And the idea behind that is that because this is designed to build games, you're going to have that event loop regardless. That's just ticks or something that happened in games.

Amir: That was a part of it. And another part of it was just lessons learned from other runtimes. So you have Node.js that did a very good job with event loops. The challenge is that they didn't expose their event loop to the user. They used a unicorn velociraptor, libuv, that's what it's called. It's literally called libuv. It's a C library that is the event loop orchestration, and it stands for unicorn velociraptor.

Rachael: Unicorn Velociraptor. That is a magnificent sight, like a majestic velociraptor running around with a beautiful, glowing unicorn horn, just running in circles to manage the event loop. [laughs]

Amir: Libuv, there you go. And that's what Node.js uses is this high-quality Fortune 500 thing that has a runtime component that's called unicorn velociraptor. And it was a good idea. So we asked ourselves, “If we could do Ruby again today, what would it look like?” And the Ruby that we created has an event loop.

Rachael: That makes sense. That makes a lot of sense, especially given your context. I saw something interesting when I was looking at the API for DragonRuby, and it's that you take everything that needs to be rendered on the page, and you pass that in?

Amir: Yes.

Rachael: And it re-renders everything every time.

Amir: Yes.

Rachael: Why?

Amir: How does React work? So in the other direction, they have a Shadow DOM. So even though you have this sub-component that's supposed to be shown on the page every time, it doesn't necessarily re-render every time because of the Shadow DOM. And it's smart enough to know that, but you get the benefit of not having to worry about mutable and persistent state. You just have to worry about what you want the screen to look like on this frame.

Rachael: Oh, I see. It's the immutability.

Amir: Yes, and it's data-oriented, and everything serializes. So when you get an exception, we can give you the game state, and we can give what the view looks like because it wasn't a side effect. You didn't call draw a label. It was something that you added to a collection that can serialize. So we persist that to disk.

Rachael: And you always do the full state. So are you saying that the Game Toolkit does use a shadow DOM where it's like, hey, I know what I need to re-render?

Amir: In a source, yes, in a source, it does. That being said, there are some things that are just expensive to render and those things you have to use by reference. So we do give you an escape hatch. But yeah, generally speaking, we know what changes on the screen and what doesn't change on the screen. And because it's mutable and because it's serialized, and because it's not shared mutated state, we can render on a separate thread. So now your rendering happens with data that is guaranteed not to change. And so these are the ideas that we put in. And if you think of it in a certain way, this is all madness. But the thing is that yeah, that’s something we've been doing for the past so many years, but things have changed, and we can do things differently.

Rachael: What I like about this conversation is you're right; this is very different from the web applications that I spent most of my life building and that I think a lot of people have built. And that's part of the reason that I want to ask you; these decisions were made with intent; they were made with purpose. You made these decisions because of things that you saw in the industry. For example, when we talked about the dependencies, it's because of the dependency hell that people go through. It's because of the left-pad. It's because of what just happened with Mimemagic. It's because, as a user, it's nice to say, “I downloaded this thing, and now I can use it,” versus saying, “I need to download these five things, and then I can use it.”

Amir: Absolutely, yeah. And it's weird. It's foreign to current developers, and it's difficult because a lot of developers say, “Do you have gem support?” And we go, “No, we don't have a dependency on MRI.” You can use gems, you can publish gems, and you can use gems to install into your local game. But we are not endorsing the use of gems because it's a dependency that is not within Dragon. And people say, “That's the dumbest thing in the world.” And we ask them, “What gems do you use?” “Well, Nokogiri, we've got that baked in.”

Rachael: [laughs]

Amir: “You don’t even need Nokogiri. We have an XML parser. You don't have to use that.” “But what about HTTParty?” “We have HTTP invocation baked in.” These were good ideas that made sense to just have something that works probably across all platforms. And then they started understanding, like, well, a lot of the gems that I really “need for a game” are there. And then, if it's all included, then maybe you don't need gems. So there are a lot of challenges there. And a lot of the growing pains are because people are taken aback by how “unconventional” this is. But then, after they try it, they're like, “This feels so good. This feels good. It feels good to make software this way.”

Rachael: I like it. That's incredible.

Amir: We just take a lot of good ideas from other languages. That's what we did.

Rachael: [laughs]

Amir: All the good ideas that happened over the twenty-five years we just went, “These are good ideas. We should totally just take them”

Rachael: [laughs] Ruby did the same thing with Rust. Ruby was like, “Okay, small talk, what do you have in your box?” [chuckles]

Amir: Yeah. And now it's like, okay, we've got Ruby, we've got Clojure. Clojure did some good things, Node.js did some good things. C#, C++, they all did good things. And it was like; we’re going to take these little pieces and make a new thing. And people are like, “This is weird.” It was like, it’s all the good things.

Rachael: Keep Ruby weird.

Amir: Yeah, I’m seeing new people use the runtime because these are game devs that only use C, C++, C#; that’s all they knew. And now they're using Ruby, and they're like, “This language is beautiful.” I consistently hear that. And it feels so good to hear that again, to hear someone say this language is beautiful and they can't explain why. But they say, “This language is beautiful.”

Rachael: Okay. So I stream on Twitch. I stream Ruby. People show up on my chat all the time, and they're like, “Ruby is dead. Ruby is slow. Ruby is this. Ruby is that.” And you would probably reply with, “Do you mean mruby, or do you mean CRuby?”

Amir: Yeah, do you mean CRuby? A language can...I can be an assh*le. [laughs]

Rachael: But my thing is Ruby was never meant to be any of those things. It was meant to be beautiful, and it was meant to spark developer joy.

Amir: Yeah. And when I think about dead, a language definitely is dead if there is not a person learning this language today. And that is just completely utterly false for --

Rachael: So I saw an article a couple of months ago from the guy who worked on C++ and wrote it. And he's like, “My language isn’t dead. I'm still releasing things.” [laughs]

Amir: It’s like, “What are you talking about?” I think what usually people mean, and I try to internalize that now is I feel that gainful employment through this language relative to other languages is less. And yes, that's true. You can frame it that way. If you look on Indeed, there will be a dime a dozen, maybe. But I don't want to be employed. I want to work on the stuff that I want to work on, build the things that I want to build, and make that sustainable. I don't want to work for someone else. And yeah, I don't care about gainful employment. I understand that that is an important aspect of it, but gainful employment is only a facet, and that's usually what they're using to make that statement.

Rachael: I agree with you. I think that is what people measure it by is they measure it by; how many new projects are made in this language? Can I be employed in it? Although I would counter that as somebody who has Ruby on her resume and has not found a way to block recruiters on LinkedIn, Ruby is not dead by that measure. [laughs]

Amir: No way. And that's another thing I say is like, oh, there are more jobs and da-da-da, and I'm like, okay, but sort by salary. We’re number three. I mean, there's F#, Clojure, and Ruby. And there's something to be said over quantity and quality. It’s like, okay, if you want to be gainfully employed on the lowest rung of a game organization working overtime, making nothing, learn Unity. Go for it. That is a great way to take an advantage of, I think. I want to sort by the highest-paid salaries, and Ruby is on the top. [laughter]

Rachael: It's so good. I don't know. I think what we're landing on here is that everybody has their own idea of what's right for them, right?

Amir: Right.

Rachael: They have their own idea of what feels good, what feels right, what they want to build, and why they want to build it. And for some people, they look at salary, for some people, they look at whether or not it has static typing, and some people are like, I just want to write a language that looks really, really pretty.

Amir: Yeah. And that's where the importance of unpacking it like we just did is that once you understand that measuring stick they use, we can reach a common ground at that point, and we can speak specifically to us. So when someone says, “Ruby is dead,” I say, “What do you mean? And are you saying Ruby is dead because you can't get a job with it? Where do you live? Have you looked at remote work? Are you saying it's dead because you're seeing all the emails from recruiters saying this? What is the metric that you're using?” And then it helps --

Rachael: Is it just a stereotype?

Amir: From my perspective, it's a competitive advantage.

Rachael: [laughs]

Amir: People using Unity, that’s a competitive advantage for me.

Rachael: [laughs] That's funny.

Amir: I think specifically for games; Ruby is like an oil paint or charcoal. You can explore your ideas. And if you make mistakes, the language allows you to change things.

Rachael: You can express concepts in different ways.

Amir: Yes, and you can express them spatially or non-deterministically, and it's okay because it's a game, and you don't know what you’re building then. So it’s a beautiful medium to work in specifically for video games.

Rachael: I like it. I like it a lot. Thank you so much.

Amir: You’re welcome.

Rachael: Where can people find you?

Amir: Find me online at twitter.com/amirrajan. Dragonruby.org is our main product page. And we have a Discord link there, discord.dragonruby.org. I'm always on Discord, too. And then, you can always email me at ar@amirrajan.net.

Rachael: Thank you so much. I really appreciate you for joining us.

Amir: Fantastic. It's been an absolute pleasure talking about this stuff. I loved it.

Jonan: Thank you so much for joining us. We really appreciate it. You can find the show notes for this episode along with all of the rest of The Relicans podcasts on therelicans.com. In fact, most anything The Relicans get up to online will be on that site. We'll see you next week. Take care.

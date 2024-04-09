---
title: Retreat and Delete with Write Better Code with Corey Haines
category: podcast
description: Cat aficionado and author of Understanding the Four Rules of Simple Design, Corey Haines talks about co-creating the Coderetreat Workshop and spreading his coding knowledge and experience in exchange for a couch to crash on.
feature-img: /assets/img/podcasts/corey_haines_polyglot.jpg
image: /assets/img/podcasts/corey_haines_polyglot.jpg
layout: post
thumbnail: /assets/img/podcasts/corey_haines_polyglot.jpg
podcast_url: https://www.therelicans.com/mandymoore/retreat-and-delete-to-write-better-code-with-corey-haines-pl
excerpt_separator: <!--more-->
---
Corey Haines has been developing software professionally in some capacity for over 20 years. During that time, he’s spent time in most roles, from individual contributor through training software teams to founding a company. He's currently on a retreat into competency and also survive Covid sabbatical doing contract stuff for development and spending time with his two cats, Little Miss Louise and Sir Nickle of Noosie. He is the co-creator of the Coderetreat Workshop, author of Understanding the Four Rules of Simple Design, but most importantly, he loves cats, keep that in mind.
<!--more-->

- [Understanding the Four Rules of Simple Design](https://leanpub.com/4rulesofsimpledesign)
- [Corey Haines](https://twitter.com/coreyhaines)

> This podcast was released 02/03/2021 as part of the Polyglot Podcast - a series from The New Relic Relicans - both the series and team that created it have been dismantled. It was so much fun while it lasted, and I've recovered as much as possible from the Internet Archive.
>
> Huge Thanks to [Mandy Moore](https://mandymoore.tech/) who produced, edited, and put untold hours into this podcast. Without her work, the transcripts below (and episodes themselves) wouldn't have existed.

## Teasers
> Chael: I’m like, at some point, you have to handle branching logic.
>
> Corey: There are lots of ways to handle branching logic without if statements. However, should you use those techniques all the time? No. Sometimes the best way is just an if statement. I wrote one on Friday. I literally wrote an if statement. I don't write a lot of if statements, to be fair.
>
> Chael: [laughs] You're like having to protect yourself. You're like, “No, not the if statements. The if statements are coming for me.”

> Corey: Yep. And it comes back to that idea that these are called the Four Rules of Simple Design. Why do we have simple design? Why do we care about making simple design? And it's entirely because we want to make it easier to change. I like to say that you can't have a good design. There's no such thing as a good design. There's only a better design in a given context because if you have two designs and in the context that you're in, one of them is more easily changeable, that's a better design.

> Corey: And I would often tell people like, 'I've been doing this a long time. I've seen the code that gets written, and there's no reason to keep this code at all. The world is a better place because it's deleted, believe me.'

> On single vs double quotes:
> Corey: "And I would say if the performance of the string is your bottleneck, that's a really great app!"

> Chael: Because your code is already good.
>
> Corey: Your code is good, it's doing the job. Don't make it feel bad.

## [Full Transcript](https://web.archive.org/web/20220523002954/https://www.therelicans.com/mandymoore/retreat-and-delete-to-write-better-code-with-corey-haines-pl)

Jonan Scheffler: Hello and welcome to Polyglot, proudly brought to you by New Relic's developer relations team, The Relicans. Polyglot is about software design. It's about looking beyond languages to the patterns and methods that we as developers use to do our best work. You can join us every week to hear from developers who have stories to share about what has worked for them and may have some opinions about how best to write quality software. We may not always agree, but we are certainly going to have fun, and we will always do our best to level up together. You can find the show notes for this episode and all of The Relicans podcasts on developer.newrelic.com/podcasts. Thank you so much for joining us. Enjoy the show.

Rachael Wright-Munn (Chael): Hello and welcome to the Polyglot podcast. Today I'm joined by Corey Haines. So Corey Haines has been developing software professionally in some capacity for over 20 years. During that time, he’s spent time in most roles, from individual contributor through training software teams to founding a company. He's currently on a retreat into competency and also survive Covid sabbatical doing contract stuff for development and spending time with his two cats, Little Miss Louise and Sir Nickle of Noosie. He is the co-creator of the Coderetreat Workshop, author of Understanding the Four Rules of Simple Design, but most importantly, he loves cats, keep that in mind.

Chael: I really want to ask you about the Coderetreat because ever since you first described this concept to me, it's been inspirational, and I immediately was like, I want to go do this. It just sounded really cool.

Corey Haines: It's a fun workshop. It's a fun day. And it came from this idea of software developers don't get a chance to practice. We do a lot of coding, but when we sit down and put our hands on a keyboard, almost always we're trying to get something done, whether it's open-source work or your job or whatever, and rarely do we have the opportunity to just do something such as write the same code over and over again. Like, I'm learning piano, and while I am learning the sonata and I'm also learning how to play Movin’ Right Along by the Muppets, I also do scales. And I do small little etudes so that when I'm playing something and it says like, oh, hey, I have to reach an octave, my muscle memory is there, and I know when it's there.

And one of the things I like to say is that the fundamental way you code, the techniques you have, the knowledge you have, the skill you have, those come out when you're under pressure. When you've got a deadline, when you are just really stressfully trying to get something done, that's when your fundamental skills are present. And so what we want to do is spend time practicing fundamental skills so that when the pressure is there, those are what come out. And it came about in 2009; there were four of us who were at a conference, one of my favorite conferences, CodeMash. And we're all in the hallway talking about this idea of practice. And this was at the beginning of the software craftsmanship stuff that was going on, trying to bring technical practices back into a lot of the mainstream conversation, especially in the Agile community.

And so the four of us all had different ideas and put it together, and we thought, what if we had a day where the entire intent was to practice? We weren't sure what it would look like. But we said, “We know enough people. We could get 20 to 30 people together and spend a day and figure it out.” One of the people had a sample project, which was Conway's Game of Life. We had the first one in Ann Arbor, Michigan. It was really amazing because the people we had there were really top-notch experienced developers. And everybody contributed their little ideas. And over the course of a couple of sessions or a couple of days of trying this in different places, we settled in on this idea of okay, get rid of your code. So the format of Coderetreat, how it's been formalized now, is we always work on Conway's Game of Life because it's a very constrained domain. It's a simple domain. It's easy to understand.

Chael: Could you briefly describe Conway's Game of Life?

Corey: Yes. Conway's Game of Life is what's called a cellular automaton. It's a game where you basically have a grid, and each cell of the grid is either alive or dead. And you start out with an initial configuration of cells that are alive or dead, and then you basically tick time. And the next grid has new cells alive and dead based on some simple rules. So a cell that is alive, that has two or three neighbors that are alive, stays alive in the next generation, and a cell that is alive that only has one dies in the next generation. And so basically, you set up the initial configuration, and then you just keep running. There's no interaction to it. You just watch it. You just generate new generations. It's easily done, but it's large enough to not finish in the amount of time we give you usually. And so what we do is we work in sessions, 45-minute sessions; we pair. Ideally, we're doing test-driven development, but it's not a hard and fast rule; it's learn what we want to learn there. And at the end of the 45 minutes, we delete all of the code we wrote, then we swap pairs, and you start again. And we do this usually five to six times through the day. And so when you go there, you get to pair with five different people and always starting on the same problem, starting at the same spot. And then, each session, the facilitator introduces different constraints such as no if statements. Can you build this with no if statements?

Chael: Ooh.

Corey: One of my favorites is non-primitive types across method boundaries. So you can't pass ints or strings. You have to wrap everything that goes across a method boundary in or out. You have to wrap it in an object that you've created, a type you’ve created.

Chael: [laughs]

Corey: So you have to be very conscientious and conscious of what these represent.

Chael: Not even arrays?

Corey: Not arrays either. So you would introduce a concept called a neighborhood which may have an array inside of it, but it also then allows you to add the behaviors that a neighborhood would need, like finding the nearest neighbors or finding which neighbors are alive, things like that. The early days we were just trying things out. What I ended up settling on was I used it as a way to talk about the Four Rules of Simple Design, which we'll talk about later, but different people had different things that they focused on. I was one of the main people who was propagating the Coderetreat Workshop around the world. And so what things I focused on tended to get out there because I would go to a city, do a workshop, and then spend time with one or two people there teaching them how to do the workshop and how to facilitate it because my goal was to not be a bottleneck in it and to not be the only one who gets to do this or that.

And it's worth mentioning, very much worth mentioning, that there was this really cool early development in 2009. Right when we had started doing this, I went to Romania to speak at a conference there, and I also did a Coderetreat there. Two people, Alex and Maria, who were running the conference and who I stayed with, loved this idea and loved this workshop. And so when I came back to the States and continued doing them in the States, they then continued doing them in Romania and in the surrounding areas. And I think this was May of 2009. And then, in January or February of 2010, went back to Romania, and we sat down and compared notes because they were evolving the format in a slightly different way than I was.

Chael: What direction did they take it?

Corey: So I always ran it with a single language.

Chael: Oh, they went multilanguage?

Corey: They went, “Use whatever language you want.” One of the most fundamental things that they contributed was there’s a set of questions at the end of the day that says, “At the end of the day, we all get together, and we go around a circle, and you ask, or you answer, ‘What did you learn today? What surprised you today, and what are you going to do differently moving forward?”’ And this became the final retro of the Coderetreat, and this came from them. These were the questions they ended up settling on. They also tried different problems, none of which worked as well as Game of Life, and so they just came back there. But we were just floating around. And so while there were four of us who came up with the initial idea --

Chael: And who were the four of you?

Corey: It was me, a guy named Patrick Welsh, a guy named Gary Bernhardt, and a guy named Nayan Hajratwala. We were the first, and very rapidly, they stopped after the first couple. They had jobs; they were doing things out of this.

Chael: Oh, no. This is what people do. You’re all like, “Let’s make a podcast together.” And most of the time, it's like, “Oh.”

Corey: They all had responsibilities. I was taking a year off of work.

Chael: So you could dedicate yourself.

Corey: Yeah. And I was also driving around. I spent 2009 driving around basically the East Coast pairing with people in exchange for room and board. I got to spread it a lot.

Chael: In exchange for room and board, you were basically like, “I'm going to…” you were like a coding nomad, basically.

Corey: Yes.

Chael: You’d be like, “I'm going to spread my understanding and knowledge of coding and experience. Can I crash on your couch?”

Corey: Yep. It was super fun. And it was great because, in some places, I would learn stuff, and in some places, I would teach stuff. But it was like, I would learn something, and then two days later, I would teach it to the next person I would pair with. And so I would pair for a couple of days. It was a max of five days that I'd be at someplace. But I got to meet a lot of people. It was a great experience because it leveled me in that I got very confident in where my skill level was. Not that I was great or bad, but like, you know what? This is how I am. I paired with a guy in Muncie, Indiana, who was writing a Ruby bytecode interpreter in ActionScript. And let me tell you, I just was like, “Okay.”

Chael: [laughs]

Corey: And so we only got to pair for one morning, and I was holding on by my fingertips and pointed out spelling errors. Like, that's my major contribution. And then there were places where I taught how to program. So it was this really nice leveling of yeah, there is some stuff, so it was super fun. But I also got to spread. I did Coderetreats all over the place too, which was a good, nice thing.

Chael: I love that. I want to go back to something that you said earlier, significantly earlier. You said that you do 45 minutes of coding with a partner, and then you throw it all away.

Corey: Yes.

Chael: Why?

Corey: There are a couple of reasons; one is you don't really want that code like, it's practice code. The act of writing it and the act of using these constraints is what you want to carry with you, not the code. You didn't write anything spectacular. And I would often tell people like, “I've been doing this a long time. I've seen the code that gets written, and there's no reason to keep this code at all. The world is a better place because it's deleted, believe me.” One of the reasons is because the constraints that we put in place are not constraints that you necessarily should use when writing production software. One of the ideas that we had was we always talk about I don't want to go too far. Like, I don't want to gold plate this, or I'm going to refactor. I'm going to eliminate duplication, but I don't want to go too far. But when you really get down to it, nobody has ever gone too far to the point where they know it, and you can point to like, I've gone too far. I know how to back up to the point where it's just enough. Too far is always what the other person has written.

Chael: Yeah.

Corey: I would tell people, “Today is the day we all go too far.” Should you not use if statements in your code? Come on, that's ridiculous. Should you be judicious about your if statements? Yes. If you've never actually gone to the level of not using any if statements, it's hard to know is this a good place?

Chael: It's funny that you mentioned if statements because I was describing the cuddled else on Twitter, and of course, all of Twitter showed up to comment on it. There were a whole lot of people that were like, “Why is there an else statement? You don't need an else statement. Else statements are evil.” There was one person that was like, “If you've included an if statement at all, your code has made a mistake.”

Corey: [laughs]

Chael: I’m like, at some point, you have to handle branching logic.

Corey: There are lots of ways to handle branching logic without if statements. However, should you use those techniques all the time? No. Sometimes the best way is just an if statement. I wrote one on Friday. I literally wrote an if statement. I don't write a lot of if statements, to be fair.

Chael: [laughs] You're like having to protect yourself. You're like, “No, not the if statements. The if statements are coming for me.”

Corey: [laughs] I don’t generally. They are coming for me. They’re going to get me on this.

Chael: Every if-statement I've written in my code shows up in my nightmares. [laughs]

Corey: Yes. And there's a little mark, the computer makes a mark and then at night comes and hassles me about my if statements.

Chael: [laughs]

Corey: I will say that the person who says that you should not have an else I strongly disagree with that.

Chael: Oh yeah.

Corey: An if statement without an else is a thing that says, “I'm not going to produce a value.” And so what is the value of this if statement? If you have an if statement without an else, you are absolutely doing either a side effect or you're returning something undefined or null. But if you have an else, then you are handling both paths through your code. And not having an else often is the cause of bugs because you're like, “I'm handling this one path. The other path is sort of undetermined.”

Chael: Oh yeah. I know what you're talking about where you're like; here’s my if statement, and I didn't include an else. I just had if the if statement doesn't happen, it falls through to the else.

Corey: Yeah, and it's just there. Whenever I look at a language, that's one of the first things I look at is whether or not their if statements have forced elses.

Chael: Is that a thing?

Corey: What?

Chael: Are there languages that have forced else statements?

Corey: Yeah.

Chael: Like what?

Corey: So I love Elm, for example. Elm has to have an else because if you have a language that has no concept of null, you have to have an else. And guard clauses like Ruby’s, Ruby’s is like follow on if. That really is an if...else; that has an if, then return this, else do this other chunk of code.

Chael: Fair enough.

Corey: The syntax is there. Now that being said, Ruby does support if statements without elses, but that's because Ruby can support it by having a null.

Chael: A lot of people talk about writing safe code. Ooh, that gives me a question. You've got 20 years of experience. What does it mean to write safe code?

Corey: What I would probably say is code that you can determine what is going to happen when you run it. That is the kind of code I would like to write. And that comes then into play with things like if you have an if without an else just to use that, you're not 100% sure what's going to happen if the predicate is false.

Chael: Yeah, I love this description. Like, a developer reading this code knows what's going to happen because if you think about it, the opposite of safe would be unsafe. And if we're talking about unsafe, we're talking about bugs, and if we're talking about bugs, that's something that a programmer does not intend to have happen.

Corey: Yep. So, for example, allowing global side-effects global mutation of data is an unsafe practice which most languages support that, not all, but most languages support that. If you happen to be doing that, you’re writing in an unsafe manner. The idea of a pure function where for the given inputs, you always get the same output, that's a very safe technique. And there are languages that force that, a lot of the functional languages, and there are languages that don't enforce it. But just because the language doesn't enforce it doesn't mean you can't code in that way. Like, ideally, most of your code consists of pure functions. And so you don't have this if I call it, it's going to return me the same thing. And you can do it in a really nice way in OOL languages, just like in a lot of functional languages as well. I want to be able to trace through my system and do it. The difference between programming in a language, the two main ones that I’ve used as examples, it can be difficult to know what the state of your system is in JavaScript.

Chael: Yes.

Corey: And that's why we get things like undefined is not a function, and you get runtime errors because the complexity that you have to keep in your head starts to grow past what we can actually hold in our head. And then you contrast that with the language I like writing in, which is Elm. It doesn't have mutable value. Every value is immutable; functions are pure, there's no global state, things like that. There's no null; there’s no undefined. There are none of these things that cause it to be harder to track what's going on in your system. You can always trace through an Elm program and see what is going to happen when. And because of that, you can build systems that don't crash in production. The second Elm map I ever wrote ran in production for a year and a half before I left and never had a runtime issue that was not related to the direct line with the outer world, basically JSON coming in and out.

Chael: Yeah, that wasn't directly connected to an API somewhere.

Corey: Yeah. So the code, the system itself, never had a production issue or a production error issue. I write issues all the time, [laughs] but that's just an error with the program, I would say that. And so leaning more towards the safer you can go, the more productive you can be because if the language keeps you from doing things that could be dangerous, then you can move faster because you don't have to think about those things. But it can be a trade-off because Elm has a lot of boilerplate. Elm has things you can't do, and so it constrains you, which I like. I like to have the language constrain me like that. But I also love Ruby, which is like the Wild West.

Chael: [laughs] You can rewrite how a string works.

Corey: Exactly. It's interesting because the difference for me, and this is just, of course, all my opinion, which is objectively true; the difference between Ruby and JavaScript for me is that Ruby has a design behind it that is about being free whereas JavaScript to me feels accidentally free. I'm not going to say that it's bad or good. Ruby leads more towards my aesthetic because I like that it feels like all of the sharp, pointy parts of it were designed to be sharp, pointy parts.

Chael: I completely agree with this. I'm a huge fan of Ruby. When I think about Ruby and writing it, it often feels like poetry to me. Every single person's Ruby code that I read has a different style based on what they've written in the past. And you can see that in their syntactic sugar as well because there are so many different ways to write the same line. The other thing that I like about it is that its meaning is clear, but it isn't overt; it isn't explicit. You don't tell people like, “This is the type of this thing,” that feels so pedantic to me every time I have to write a type signature out.

Corey: [laughs]

Chael: I've started working with Rust. So I'm going to say every time I have to write a type signature out, it drives me a little bit nuts because Rust is actually very tricky, and I kind of like it. They'll be like, “Oh, I know what this type is supposed to be. I'll include it. You just have to put let. “But then I'll run into cases where I have to be very explicit, and I have to tell it “Here are all of the values on this struct, and here are all of the values in the map, and I'm just like, “Why do I need to do this?” I made a result today, and I sat there, and I was like -- I basically made a little Monad where it's like true/false, and here's the result, just something silly to test out structs. And the first one was a bool which was fine. But the second one, I had to specify the type, which means I would have to have a different result for every single type and that just chafed me.

Corey: [laughs] Yeah. And that's where you'd get type variables, and things like that come into play. The interesting thing, and it's funny because I've heard you talk about types a lot. And it's funny because my story about types -- I love types, and I love types systems. And the reason is, and it always comes back to this for me, is I bet it was 2007. I was at CodeMash at a late-night party where we were all drinking. And I was doing C# at the time, and I was moving to Ruby because C# I started getting annoyed with the compiler because I was doing TeD. I would say that I would call in this method; the method doesn't exist yet. The compiler would yell at me. I would say, “I know I'm going to get there,” blah, blah, blah. Ruby never yelled at me. And so it was kind of complaining about types in C#.

Chael: I love that as a quote, “Ruby never yelled at me.” [laughs]

Corey: Ruby never yelled at me and still hasn't yelled at me. And my friend had been doing F#. He said, “Corey, you don't know what you're talking about.” And I said, “Really?” And he said, “No.” And I said, “Okay, show me.” And he showed me algebraic data types, and just a whirlwind tour in F# blew my mind because I had never thought about types in this way. And that's like when I talk about how a type system is glorious.

Chael: You’re going to have to tell me about algebraic data types.

Corey: I will. One time I'll show you. Because the thing is that a language that has a really good type system, it's not about writing the type signatures; it's about encoding your domain and your logic in the types themselves. And then a language such as Elm does type inference, so you don't actually have to write your type signatures.

Chael: Yes. Because I think all languages have, and I might be wrong here, but I feel like all languages have types like the data that you pass around has a type. You can't just be like; I’m going to throw together like an int. Well, most of the time, you can throw together an int. But you can't throw together a bool and an int. I'm going to rephrase that. In JavaScript, you can. You should not be able to throw together a bool and an int. But I think that's what it is. Every language secretly has a type system in it. Like, it understands what it's looking at.

Corey: Not every language has a way to define your types with a lot of constraints. One of the first examples that I bring up when I show people Elm is a very common thing when you're doing development in a browser is you make a call. Like, you have some data that's uninitialized, you make a call to an API, and that data comes back, and then it either comes back, or you get an error. And writing this code, you have to write it all the time. And usually, what you do is you have a boolean somewhere that says whether or not you’re making the call. Has it been initialized? Has it errored? When it comes back, how do you set it was an error? Maybe you have an error type. However, what you can do is actually create a new type. And in Elm, the one that we always use is called RemoteData. And there are four possible values for this type. So there are only four things that can be; it can’t be anything else, not asked, asking, success with the data, or error with whatever the failure was. It can't be null; it can't be undefined; it can't be five; it can't be anything. And so when you set your value to be of type RemoteData, and you know always that it is one of these four values, you can then anytime you use it, you can say, “Are you not asked, are you asking, are you success, and now I have the data or are you an error, and I have the failure?”

Chael: I will admit this is a nice-sounding interface. Isn't it just getting the booleans and stuff that was laid down all over state and collecting it and saying like, “Every time we do this, we're going to use these.”

Corey: Except you can never have a situation where the currently asking boolean is true, but the data is set.

Chael: Yeah. You have to do that one before. [laughs]

Corey: Mm-hmm. And that's the thing is you only ever have the data accessible to you if it's a success. And the nice thing is that if you have exhaustive case statement checking, then every time you deal with this variable, you have to deal with every possible case. And so there are no places in your code where you're like, “Oh, I forgot to handle when it was asking.” And then you also have functions such as maps so that you could call map on it, which if it's in a success state, it will take the data and send it to your map and then you do whatever you need to do with it and return the new data. But if it's not asked or asking or an error condition, it just doesn't do anything.

Chael: Yep. Yep.

Corey: It's a really nice thing. And that's why I like to say that the thing I love is not that I can define what the type is of something. It’s that I can define what the values of a type can be. And so, like an algebraic data type, this is an additive type where you have four different values. And so having that, you can define business logic in there. And because the compiler makes sure that your code conforms to the constraints of your types, you can do away with a lot of the explicit tests that you normally would write because your system is not even going to compile if it's not handling certain cases. And so you don't ever have to write a test that says, “What happens if my asking boolean is true, but I have data back?” Literally, that situation will never happen. And so, by defining and thinking about your problem domain in terms of these types, you can do away with so much. And I write fewer tests like automated tests in Elm than I do in Ruby because Ruby doesn't have these abilities to do it in. And so for example, TypeScript --

Chael: It comes built-in with Elm, right?

Corey: Yes. The language just doesn't let you do anything else. You have to do this. And so when you're learning a type system like this, you end up starting with some of the built-ins like Maybe result, and then you start moving away from those into more domain concepts for you. So you write a lot. You might write a lot of two value types. It might work to use a Maybe, but you end up just calling it your own thing. So it's really this thing of type-ing is not the real beauty of it. It's the type system being able to construct them. And how do you create types? That's so freeing and safe.

Chael: Yeah, interesting.

Corey: But it comes with more hassle.

Chael: We went off on a very long journey of static types and such. Well, let's try and bring it back to Coderetreats and some of the common patterns and maybe some of the traps you saw people fall into.

Corey: I think a lot of what people fall into is that mentality of still trying to get done. I don't do Coderetreats anymore. I stopped doing them a handful of years ago. They still happen. But one of the things that over the years that I did then was getting people away from that mentality of I have to finish this as soon as possible and into the mentality of it's okay to practice. It's okay to try something and then delete it because deleting code is hard for people until they get used to it. Nobody seems to like to delete their code. And one of the interesting things is that I was just talking to somebody about this the other day. One of the things that came out from the idea of deleting code is the idea of a 24-hour branch. Imagine if your branches only had 24 hours to live and all unmerged branches got deleted after 24 hours.

Chael: I would never successfully wrap the JSON in -- What is it? The playbook in a value object. It would just be gone. [laughs]

Corey: But here's the thing, here's the beauty of it. And absolutely, this is a perfect example, the playbook stuff in HuntersKeepers. We actually did this at the company that I had founded, my three-person team. I was just like, “Let's try this for a month.” And after the month, we just ended up just continuing to do it because it's so nice. So a couple of things that are interesting about it, suppose you have a task that's going to take you four days. It's big; you’re not sure how to do it. Usually, tasks that are going to take you that long there's a little bit of “I don't know how to do it.” Now imagine you had three practice days before you actually wrote it. So you had three days to just write crappy investigative stuff and just trying it and then try it again in a different way. And then most things can be typed in a day. By the time you have done it three times, the playbooks have been wrapping it into a custom type in Rails.

Chael: For those of you who are following along at home, Corey: strongly recommended I check out his RubyTapas episode on Wrapping JSONB columns in value objects. And I've been trying to do this for four weeks now. [laughter] I'm kind of hiding from it. It's a long-standing branch [laughs], and I'm just like, “Yeah, don't worry. I'll get to that after this week’s break.”

Corey: Yes, after this break, after this.

Chael: [laughs]

Corey: Imagine if you got to try it and then just throw it away and try it again and throw it away. Because one of the problems that you run into is that you try it, you're not sure how it works. And then when you come back to it, you're living with the lack of knowing how it works. One of the great things about this is having practice and then the last day, just type it in. You know how to do it. You've tried a bunch of different ways, and you don't have to live with the code you wrote while learning.

Chael: Because I threw it away. I've done that before, where I’ll start a project, and I'll run into some dependency issue, and I'm like, I don't understand what's happening here. I don't understand what command I ran while trying to -- Normally, this happens to me when I'm trying to start up a project, and I don't necessarily follow the guide in the order that I'm supposed to follow the steps. [laughter] And then I'm like, I don't know what happened. And what I'll do is I'll just start at the beginning and run everything from scratch. And normally, there's something I've missed, some description, because the first time you read something, it's almost like you're skimming it. You only pick up a surface layer. And then you listen to it again, and you're like, now I understand the nuances. Now that I've looked at this, I've taken the surface, and I’ve built it; I understand why, right?

Corey: Exactly.

Chael: Like at first, I heard Rust was strongly typed. [laughs] I’m going to talk about Rust a little bit.

Corey: [laughs] Nice.

Chael: But at first, I was like, I don't like strongly typed languages. I find them pedantic, and it's because all my experiences were with Java and stuff like that. And then I tried it, and I started to understand oh, they only ask me to put the type when the compiler cannot possibly know what the type is.

Corey: And that's such a joy with type inference. Elm does wonderful type inference. I actually write all my types. All the types signatures I actually write them first.

Chael: You like the constraints.

Corey: I like the constraints. And that is my first test in that it helps me think about what is this function supposed to be doing? Oh, it's converting this to that. And so it's a thought process more than -- the type signature itself I often don't use as a safety mechanism but a thinking mechanism like, okay, if the type signature is wacky, then perhaps this function is a little wacky. Like, maybe it should be two functions. Or wait a minute, why are there six parameters on this function? Is this really doing too much? Should it have this? So I use the type signature to think through the problem. And then by the time I have it written, when the code finally compiles, it almost always works because I've got the legos altogether, and they snap, and they lock. And once they do that, I mean, I try to write small functions so I can look at it. And for the most part, once the types are all aligned, it really feels like it locks into place. And I run the function, and it's like, “Oh yeah, this does what I thought it was going to do.”

Chael: That actually reminds me of something that you told me when we were starting Coderetreats. And that was about like, how many people would build functions that just passed in X, Y when it came to finding locations and stuff like that? And then you’d just say something like, “It's an infinite grid, or there's a Z access,” and it starts to break things.

Corey: Yep. And it starts to break things. Whereas if you have a type like a location, then that function there's a good chance that that function is not going to break if your topology changes. It just has a location and doesn’t have to care what the sort of internal structure of the location comes into play.

Chael: And you can pick up on that if you're focusing so much on the signature of the method versus how quickly can I write the internals of this method?

Corey: Yes, because if you get down to it, writing the internals isn't that fun.

Chael: [laughs]

Corey: That's not where the fun of programming is for me.

Chael: It's about the expression.

Corey: The expression is, yes. Like you had said earlier, I like my code to express itself in a beautiful way. I want somebody to come back and read this and go, “I can follow what that is doing,” even if they don't know the language necessarily.

Chael: Okay. Let me throw this at you. If you have a process and you're writing code, and you're building a thing, I think it's natural that the internals, like the actual code that is executed in the assembly, regardless of how it's organized, will end up looking basically the same. But if you're building it, you're going to end up with this line executes, and this line executes, and this line executes. And what we're doing as programmers is we're taking those lines, and we're pulling them out into methods. We're pulling them out into objects. We're pulling them out into classes. We're doing the whole dry thing where we reuse versus repeating. And in the process of doing that, that's where the expression comes in because the underlying this line, this line, this line, that can't change if you're going to fit the mold of what you're doing, right?

Corey: Yeah, I could see that. There may be two or three ways that it does, but the core thing is exactly what you're saying for. And it's important, I think, to put the context in. I write web apps. Most every app I build takes data from the user, puts it into a database, does some processing on it, and shows it to the user. I don't build operating systems. I don't build programming languages. I don't do computer science. I'm a software developer. I build programs, and almost all of them sit there on the web and get data and show data. Most of the stuff is not complicated. It's the way that things interact that gets complicated. And this is where the business requirements are the complicated part. But for the most part, it's do this, do this, do this. If this data is here, do this other thing. And if this data looks like this, do this other thing. You could write it as one long thing that is a bunch of if statements.

Chael: And it would be painful.

Corey: And it would be painful.

Chael: Just in case any PMs are listening right now, it would be so incredibly painful. And you would never be able to request changes. [laughs]

Corey: And there, what you just said is the key to everything, everything about software development in our domain, in our context is that every technique, every design principle, everything we do is there so that we can change it and change it easily. If we never changed it, then I don't care what it looks like. But because business evolves and businesses change, you want to write code that can be changed. And one of the ways to do that is to use design principles that make it easy and safe for other people to come in and change it, and I think it's important for the other people. Now that other person might be you in a year.

Chael: Yes, me in a week.

Corey: Or in a week. I just wrote something last week at a place I’m contracting at, very small, just this one page, very small code. And I'm pretty proud of the code I wrote. Actually, I think it's really good. Today I got a PR review, and there were really good comments about things that were confusing in the code I wrote. Because the other person -- now I could come back probably in a month and look at it, and there would be parts of it that might confuse me a little bit because I was out of the context. But this other person they're just looking at this code.

Chael: Yeah. They don't have any context at all.

Corey: Yeah, and they can follow it, and they can read it, and it's fine. But the code that I thought was really great, like, it's a really good code, still can be improved because of the fact that the most important thing is that the person reading it understands it and is like “Mmm.” And one of the comments was, “Can you use key values rather than an array of values?” Because they find in their experience, and this is just incredibly powerful experience because I found it too, is if you have a long list where depending on if it's the first element or the second or the third element, there are different things, like, they're the result of a computation, it can lead to confusion debugging when you are like the zero is this and the one is this. They were like, “So if you just use the hash, then it's named.” And I was like, “Yeah.”

I mean, the code I wrote had one value in it. So it wasn't leading to -- like, it wasn't confusing but somebody coming in and reading it sees me indexing it to get a value. I knew exactly what that value was, but this person is going to have to go look in the function that I called to find out what that value is, and if I returned key-value pairs, they wouldn't. And when they come back and if somebody comes in and asks them to change it, if they have to go diving in and getting my code, like, “What's going on here?” It inhibits their ability to change, and it inhibits their safety and their confidence in changing it because who knows if something else uses that zero element? And so all of the techniques we do are about making it so that this other person -- and that's one of the great things about doing reviews is if somebody else can tell you, “This is confusing to me,” and then it's a back and forth. Like, there were comments that I got that I explained, “This is why I did it that way.” And they said, “Oh, okay. That's okay then.” But then there are ones where they said, “Hey, when do you use parentheses versus no parentheses in Ruby? Like, what's your internal guide?” We all have our own.

Chael: Like class methods. All those little Rails DSL stuff, like all of the validates, all of that sort of stuff, those are all methods, and no one thinks about them that way because they don't have parentheses.

Corey: Yup. That's one of the things that people say, “DSLs are really nice without parentheses,” but there was this one line that I didn't use parentheses on, and it was a one-line block. And so I was like, “I don't know why I didn't use it.” I mean, there's such an internal -- a lot of stuff you don't think about, and that makes me think like, okay, I feel that you should be able to justify the way you write code and the things that you can't explain are things that you haven't self-reflected on.

Chael: Can I throw something at you?

Corey: Yes.

Chael: The human brain, whenever it's trying to justify an emotion, starts first with its emotional response, and then it comes up with a justification to follow. So, for example, facial feedback is a great example of this, where if you're smiling, it'll actually make you feel happier. If you have a ton of adrenaline going through your body, your body will literally sit there and be like, what is the condition I am under? Should I be scared, excited, elated, right? Like, it will look at your surroundings and your circumstances to determine how you feel based on your hormones. And I think the same can sometimes be true of our preferences like single quotes versus double-quotes. My first Rails repo preferred single quotes, which means that whenever people talk about the difference between single quotes and double quotes, I am very emphatic that there is a difference between single quotes and double-quotes. And it is helpful to know that I see single quotes. But part of that is due to the fact that I'm comfortable with it. I grew up with it, and I'm used to seeing those. For somebody that has been in a double quotes-only codebase, which, if I'm not mistaken, Rails is a double quotes-only codebase.

Corey: I believe so. I only use double-quotes.

Chael: So you are a double quotes-only person.

Corey: Yep.

Chael: What is your justification?

Corey: I don't want to have to think about whether or not to use single quotes or double-quotes.

Chael: See, mine is that there's a difference, and I don't want to have to think about whether or not something may have interpolation at the end of it when I see it at the beginning. So both of us are saying it is lazier for us to use our preferred form of quotation.

Corey: Yep. And it is, like you said at the beginning, it's a personal type of thing. I just want to be like; I don't care if there's interpolation in it. If there's interpolation, I can tell there's interpolation because --

Chael: [laughs] Because you’ll see the pound and the curly braces.

Corey: Yeah, you’ll see the pound and the curly braces. Your interpolation hug, as you used your hugging elses.

Chael: A cuddled else is a real term.

Corey: Oh, is it? Okay.

Chael: I did not make that up. [laughs]

Corey: Cuddled interpolation. When I started Ruby, there was a performance difference. There's not anymore.

Chael: Yes.

Corey: And so that justification for it, which was a bad justification most all the time anyway because again --

Chael: What, performance?

Corey: No, the performance of single versus double was justification for using one or the other because most people write Rails code, and they're writing code that is running over HTTP. And I would say if the performance of the string --

Chael: All right, fair, fair, fair, [laughter]

Corey: You have a great website if that's your performance model [inaudible 39:53]

Chael: [laughs]

Corey: Now that being said, if you're doing ETL and you're processing a ton of strings and really doing string manipulation --

Chael: Like with a b string literals in your code, though, and the answer is no.

Corey: No. You [inaudible 50:08]

Chael: Which means single versus double wouldn't touch anything, yeah.

Corey: Yeah.

Chael: That's a really good point. It actually brings me to something that I feel very strongly about performance, which is that if you're not measuring it and you're not making your performance based on benchmarks, traces, or an understanding of where the slowest code is, you're not really debugging performance. You're just playing around and making changes and being like, “I think this is faster,” and maybe you're right. It's not very scientific.

Corey: Let me give you an example. I was at a place one time, and I'd come in, and the system was already built, and I was working with the team. And the person who had been there before had built this rather complicated, basically this Vue object library. There's a Vue object library out there called cells which it's similar to that. And I looked at it, and I thought man, this is just --we were having problems. I figured this was the problem. And I looked, and I was trying to figure out what is causing the problem here? And to swing back to something relevant, I ended up having to track garbage collection.

Chael: No.

Corey: Yeah. It's like, how many garbage collections were happening? And it turned out that it was -- I went out, and I had a third-party system that I use; this was in 2013, I started using a little startup that did performance tracking on Rails apps.

Chael: I’m starting to see where this is going. [laughter]

Corey: This is true. This is actually true. And one of the things that they tracked was garbage collections per request. I was able to show that it was doing 100 garbage collections during a request.

Chael: Oh.

Corey: And it’s just like oh. And that, of course, means that you're stopping all processing doing the garbage collection because this was also 2013 when you didn't have the out-of-bound garbage collection. And so I was able to measure it and then go in and make all of the adjustments to it and watch my garbage collections go down to 1 every ten requests. It actually did–

Chael: [chuckles]

Corey: And of course, performance improved, but you have to start with that baseline of here's where the problem is because otherwise, you get into those arguments around single quotes versus double-quotes. And it's like, what is the problem there? And so doing that measure first using New Relic, of course.

Chael: [laughs]

Corey: It's funny because I did use New Relic, and I've always used New Relic with my Rails app.

Chael: It's very easy to install if you've got a hosted provider. That's what I do with HuntersKeepers is I literally just pull up New Relic. [laughs] This is funny. I use a gem called Acts as Taggable On. Don't use Acts as Taggable On.

Corey: [laughs]

Chael: It's the highest-rated gem in Ruby toolbox. And I was familiar with it, and so I didn't want to build my own tagging platform. I should have just built my own tagging platform because I went and I looked at this thing; oh my gosh, I can't even. It was doing a separate query for every single item in my list to pull from this table. And it's pulling from three different tables and using all these Joins and stuff for each of them, and it's three strings per each of them. And like, you only have to put it in once. I could have made it a Postgres array, and my life would have been easier. I’m never going to need to search for everything tagged with that. I was hoping it would make the input easier, and it didn't. It just made everything harder. I looked into it, and literally, that was the slowest endpoint on my entire system by a vast margin. Was this an index query? There are only 20 items on the list.

Corey: And that's the thing is you really just needed to…yeah, have an array in Postgres or have a string that you could search with a like on --

Chael: I don't even need to search by the tag. I just need to display the tag to the user.

Corey: Yeah. And this is the thing about using general-purpose libraries like access tag, which I have used because you have a specific situation. You're like, oh, I want to be able to have tags. And there's a general-purpose library, which is a good solid library.

Chael: It’s very robust. It does not allow you to include tags in your query.

Corey: Oh yeah? Oh, that's nice. [laughs]

Chael: Yeah, it doesn't have the includes. That's what I spent 45 minutes trying to figure out.

Corey: And building yourself often is you find that you don't need as much as you think you need. You get to a certain point, and it does what you want. And let me swing back to short-lived branches. So oftentimes, one of the other benefits that you get from it is that you also learn how to split cards effectively and how to split your things. So if you have a task that you think is going to take four days and instead of taking the three days of practice, you split it into four one-day things that build on each other, often, you get to day three, and you finish day three, and you realize it has enough because you were less knowledgeable on day one than you are at the end of day three. And so by the time you get there, you may realize that the feature you thought you needed you don't need.

Chael: Have you ever used the spider method to split stories?

Corey: I don't know. Tell me what it is. I can't, off the top of my head, think of it.

Chael: We’re talking about splitting stories. I'm a five times team lead, so this is the thing that I know.

Corey: Awesome. I love working on splitting stories.

Chael: So they talk about spikes, paths, interfaces, rules, and data. The reason that I like this is your spike is like day one 24-hour branch where you have no clue how it works. You've never touched it before. You're just going to literally pull up API endpoints and Postman and see if you can send data between them. I like the path because that's literally like nothing is happening. It's just the user is moving from page to page to page. Interfaces is a cool one because with interfaces, what you're doing is you're breaking out individual components, UI pieces, anything like that. So, for example, we had one where it was a sales tax flow. We added sales tax to an estimate. So what they had is they had a thing where it was you could get an exemption if you were at a school or something like that. So what would happen is we would go, we would do all this stuff. We would do this processing, and we would find out exactly how much tax you owed or didn't own. You would go to the exemption page, and if it came back in green texts, it would display to you that you are exempt from tax. And we didn't have green text on that page. So we were like, we're going to pull this out into a separate story. There was one where it was like, we’re going to pop-up a dialogue that’s like, this is the success message that says this thing is done. We could pull that out into a separate story. We could pull out every single place where we displayed it to a person. And so what that allowed us to do is it allowed someone to go in, build that, and then we took those four interface tasks, and we just threw them to different people, and they all got done at once.

And if you've got something small and easy like that where you're like, “I need you to color the text of this,” your PM may be like, “Nah, we're good. We have a billion different priorities. We can cut that one.” If you've got a little dropdown and you need to hand that to a junior developer, a junior developer can knock that out in no time. And the thing is when it comes to -- I suppose I should go through the rest. The data one is one that I really like because they only handle a subset of situations because I feel like most of the time when we build it, we're like, “Build it for everything, everybody, all of the things.” And it's like, “No, no, no, just build it for one exact case. Just build it for people who do not get exemptions from sales tax.” Like, that's a case that's a set.

And then rules and other stuff like that, anytime you've got validations, this person can see this page; this person can't see this page. Anytime you've got anything like that, you can pull those out separately. We chopped this thing up so fine. That was probably my favorite story that I've chopped up because when we were done with it, it was literally like everybody was working on something, and it all didn't have any dependencies on what other people were doing. You had some initial ones where it was like, get the data in place, but the rest of it was like, okay, now that this piece is done, everybody else can just go work at the same time.

Corey: It’s that idea of if you have all of these independent little things, there's a step at the end where you glue them all together, but you can do all of them independently if they're well-defined and well-constrained and they're in their own context and things like that.

Chael: I feel like a lot of times people end up with these like week-long stories where they're like it would literally be something before this where it would be like, go add sales tax to this flow. And they would sit there, and they'd be like, “Okay, I need to handle exemptions. I need to handle actually calculating it. I need to handle all of these different interfaces. I need to handle if it's clicked from this window or that window because those are different popups because we have one version that's in CoffeeScript, and we've got one version that's like React.”

Corey: It's a fun activity doing that. I really like splitting stories and just doing that iterative five whys process and like, “Do we need to do that?” And just taking a big story and just ending up with a bunch of small stories that don't add up time-wise to the large story. We just shaved off a couple of days because we wanted to take the time to figure out what is it that we're doing here?

Chael: That's the only thing is it's a time thing every single time.

Corey: Yeah. And it's nice because it does let you then treat all of them along the way so you can come to that point where you're like, “Oh, I thought we needed this, we ended up not needing it.” I'm just like, you know what? The pop-up is enough. We don't have to put the green text on there; just have the popup. No four people are ever going to see this, the specific popup or something.

Chael: You don't want to shade green texts, though. That's Mint's entire business plan is that they take it and return it to you in a green font.

Corey: In a green font, yes. [laughs] That's true. And green is always great.

Chael: You know, we're reaching the end of the podcast, and we still haven't covered the Four Rules of Simple Design which is the actual title of your book. [laughs]

Corey: It is the title of my book. Four Rules of Simple Design the way I look at them is they're the important things to remember when you're doing your minute-by-minute programming. So when you're coding, and you're writing lines of code, you don't think about open-closed principle and single responsibility, all this. You just want to write this line of code. And so, the Four Rules of Simple Design allow you to go along with refactoring. And they were put together sort of codified by Kent Beck because people were always asking him what he thinks simple design is. And so he was just like, “Here are the four things I think about.” The first one is your test pass. If you don't have a way to say that your system works, who cares? The two and three depends on who you talk to, which one comes first and depends on when you talk to them like I'd say them, but two and three. So the next one is a No Duplication. This is not code duplication; this is knowledge duplication. This is along the lines of the DRY principle, which is the DRY principle states every piece of knowledge in your system has one and only one place where it's stored, one representation. That's what duplication is, knowledge.

Chael: We've talked about this before, but I think don't repeat yourself has probably produced a significant amount of really bad code. Like, people trying to abstract out all of the methods in their controllers because they're seeing duplication checks against them, people that are trying to remove structural code instead of thinking about consolidating behavior and making sure that rules aren't repeated.

Corey: Yes, that's a great way to put it. And I have been the perpetrator of many horrible things.

Chael: We all have.

Corey: And so there's that. And then there’s the next rule is express intent, which oftentimes when I'm telling people about it, I settle on good names. Give every piece of your system a good name. It's a little bit more than that, and there's more subtlety, but if you just hold in your mind, I'm going to pay attention to the things I name or what the names are that I give things.

Chael: And I think that goes back to what we were saying earlier where we were talking about how the organization of your code and how you extract everything into that is where you're really expressing what's happening. That's how you're communicating to the other developer because the fundamental steps have to stay the same.

Corey: Yep. And it comes back to that idea that these are called the Four Rules of Simple Design. Why do we have simple design? Why do we care about making simple design? And it's entirely because we want to make it easier to change. I like to say that you can't have a good design. There's no such thing as a good design. There's only a better design in a given context because if you have two designs and in the context that you're in, one of them is more easily changeable, that's a better design.

Chael: I love the way that you described it as better design because I think we get caught up on this idea of good design versus bad design and it being very divided. And I think it's very hard when somebody says, “This is a good design,” then somebody looks at the other one, and they're like, “Oh, that must be a bad design. Toss it out,” right?

Corey: Yeah, and it’s just so judgy.

Chael: Like, if your code works and does what it needs to do and is pretty performant, like, has the performance it needs, that's good code. It's doing its job.

Corey: That’s good code. Yap.

Chael: Some days, I wake up in the morning, and I'm like, I'm not going to get out of bed until 10:00 a.m. I don't have breakfast. I don't work out. That's bad code. Good code shows up to work every day and does what it's told to do. [laughter]

Corey: It does what it's told to do. And then, when you need to, it allows you to change it.

Chael: Yeah. That's what makes it better, is how easy it is to work with.

Corey: Yep. And if you never are going to change it, then it doesn't matter. It literally doesn't matter as long as it works, which is the test pass part of this.

Chael: Yeah. How many of our design principles are based on the assumption that we're going to be changing them because we are in a web world because we know that we can release changes immediately because we're setting things up for CI/CD? How many of our design principles are based around that?

Corey: Those four rules come kind of pre-webish. They were codified in the late ‘90s, which is technically not pre-web, but it's pre-interactive heavy what we do today and what we consider web development today, but it's accelerated it. So I do think your point is there are a lot of design principles we use that have come about as we move forward. I think potentially more than design principles, more like techniques we use like, continuous deployment as a process. You have to be able to deploy, whereas if you're doing shrink-wrap software, you can't do effectively a continuous deployment because you can't get to production.

Chael: That's what I was thinking about is. If you had something where it's like you build it, you release it, and it's done like game development, I wonder how that changes the design principles? What would happen if we focused more on extendability versus changeability? Like, we assume that everything previous to this had to remain static, and we would add a new codepath. I don't think this is a question that me, as web developers, know the answer to.

Corey: But if you think about tax software, tax software is the ultimate changing software because every year and every place has changes.

Chael: Little many districts.

Corey: Yep. And so you have to build your software in such a way that you can easily change it because you can't say, “This is going to take us a year to make this change.” You don't have that much time. I used to work at Progressive Insurance, and insurance rates change so much. If you can change your insurance rates faster than your competitor, then you can be more successful because you could start changing your insurance rates and the algorithm for the insurance rate is how you make money. You can fine-tune the insurance. And the insurance cycle goes in this very, very well-known cycle. And so, if you can change your insurance rates knowing what's coming and it takes your competitor longer, you’re going to be able to adjust and react more rapidly. So that's sort of the changing kind of thing.

So back to the Four Rules, these are, the key -- oh, the fourth one is small. I usually leave this one-off. It's effectively. You don't have more pieces than you need to have. But if you really iterate through the first two or the two and three of good names and expressing intent, generally, you end up with the right number of things. Somebody who is really good and who's written some amazing stuff and has also written about this thing is Joe Rainsberger, who's just really a good thinker on a lot of these things. And he's written a lot about the Four Rules. And he wrote a blog post about this like two and three bounce back and forth together and so that's a good one. So it's usually when you really get down to it, if you take the first one of test pass as a given, which it doesn't say automated tests, it just says that your test passed. However, if you want to change rapidly and you can run your tests in a minute versus two weeks, you can change more rapidly. But if you take that as a given and you take the small as a given, then two and three you just iterate good names and intent, then you extract duplication, and that exposes things that you need to name, and you name things, and that exposes duplication. And so it’s this big cycle.

Chael: It’s a cycle that slowly moves you towards better code because your code is already good. It's already good.

Corey: Yeah, if your code is good, it's doing the job. You don't make it feel bad.

Chael: Do you want to play a sonata and code?

Corey: No. [chuckles]

Chael: That's where we started before.

Corey: That's where we started.

Chael: [laughs]

Corey: I've been working on the Sonata for way too long.

Chael: Cool. Corey Haines, thank you so much. Is there anything you want to shout out?

Corey: I'll shout out my newsletter. So I am currently doing a project where I am learning lesser-known languages and writing about what I think is cool about them. So it's not to teach you the language, but it's just to say, “Here's something that I'd not worked with before, or I've not seen before,” and then I write a weekly newsletter about it. And I'm currently going through the Icon programming language, which has this beautiful concept of generators, and almost everything's an expression and expressions are generators. And it's just super cool, super cool. So I'm going to learn enough, and then I'm going to write a JSON parser in it because it's very good for working with strings. And there's just some really, really awesome stuff in it. And so I'm writing this newsletter, and it comes out weekly. So we'll put a link in the description.

Chael: I like it. That sounds awesome.

Corey: Yeah, it was good chatting. Good fun.
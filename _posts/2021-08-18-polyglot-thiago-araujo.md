---
title: "Ruthless Prioritization with Thiago Araujo"
category: podcast
description: Relicans host, Rachael Wright-Munn, talks to Thiago Araujo about hexdevs, his company, where he takes developers and helps them grow into capable professional software engineers, building things that help people, and risk mitigation.
feature-img: /assets/img/podcasts/404_polyglot.jpg
image: /assets/img/podcasts/404_polyglot.jpg
layout: post
thumbnail: /assets/img/podcasts/404_polyglot.jpg
podcast_url: https://www.therelicans.com/polyglot/ruthless-prioritization-with-thiago-araujo
excerpt_separator: <!--more-->
---
Relicans host, Rachael Wright-Munn, talks to Thiago Araujo about hexdevs, his company, where he takes developers and helps them grow into capable professional software engineers, building things that help people, and risk mitigation.
<!--more-->

- [Thiago Araujo](https://twitter.com/thdaraujo)
- [hexdevs](https://www.hexdevs.com/)

> This podcast was released 08/18/2021 as part of the Polyglot Podcast - a series from The New Relic Relicans - both the series and team that created it have been dismantled. It was so much fun while it lasted, and I've recovered as much as possible from the Internet Archive.
>
> Huge Thanks to [Mandy Moore](https://mandymoore.tech/) who produced, edited, and put untold hours into this podcast. Without her work, the transcripts below (and episodes themselves) wouldn't have existed.

## Teasers

> Rachael: All right. So first off, I want to ask you about hexdevs, and what the mission is, and what you're trying to do with it.
>
> Thiago: So hexdevs is a company that I started with my wife. And we are on a mission to help developers grow and get better at their software engineering skills. We do that through workshops and events. And we are developing some new techniques to teach developers, to help them. We're super passionate about that. And one of the latest things that we've done which was pretty cool was yesterday we had a livestream with Rafael França from Shopify. He's a Rails Core team member. And I guess you showed up as well for that.

> Thiago: This is going to help you so much in your career. It's ridiculous I'm telling you. When I started thinking about the customer, my career just grew so much because of that because it also came from frustration. I started this career because I wanted to help people. I wanted to build things. Building things is cool, but I wanted to help people. And then I realized okay, I really want to help people, but the projects that I'm working on they're not helping anyone. So what's the point? So then I had to learn how can I understand the customer? How can I do research? How can I work on the right features? And then things started happening for me. It helped me so much and then for my business as well.

> Thiago: And I also wanted to say, for example, sometimes I mentor developers as well. And one of the things that they struggle a lot with is not only learning but listening to my advice a little bit. So for example, someone comes to me and says, "Hey, Thiago, I want to become a Ruby developer. I want to learn and get my first job." And I say, "That's great. You're probably doing some tutorials, reading some books already, but you also have to network. Go to meetups, go to events, go to tech talks, maybe present a tech talk." And they don't listen. And sometimes I get frustrated because the easiest way to be seen as a developer, to be known is to connect with your local community, especially for Ruby. So the local Ruby communities are super great. They're super helpful, super open.

## [Full Transcript](https://web.archive.org/web/20220706133048/https://www.therelicans.com/mandymoore/ruthless-prioritization-with-thiago-araujo-2amg)
Jonan Scheffler: Hello and welcome to Polyglot, proudly brought to you by New Relic's developer relations team, The Relicans. Polyglot is about software design. It's about looking beyond languages to the patterns and methods that we as developers use to do our best work. You can join us every week to hear from developers who have stories to share about what has worked for them and may have some opinions about how best to write quality software. We may not always agree, but we are certainly going to have fun, and we will always do our best to level up together. You can find the show notes for this episode and all of The Relicans podcasts on developer.newrelic.com/podcasts. Thank you so much for joining us. Enjoy the show.

Rachael: Hello and welcome. Today I'm joined by Thiago Araujo. And what we're going to be talking about is all of his experiences in 11 years of software engineering with a particular focus on Ruby. We're going to be talking about hexdevs, his company, where he takes developers and helps them grow into capable professional software engineers. And it's going to be really awesome. Hi, Thiago.

Thiago: Hi, Rachael.

Rachael: All right. So first off, I want to ask you about hexdevs, and what the mission is, and what you're trying to do with it.

Thiago: So hexdevs is a company that I started with my wife. And we are on a mission to help developers grow and get better at their software engineering skills. We do that through workshops and events. And we are developing some new techniques to teach developers, to help them. We're super passionate about that. And one of the latest things that we've done which was pretty cool was yesterday we had a livestream with Rafael França from Shopify. He's a Rails Core team member. And I guess you showed up as well for that.

Rachael: I did. I absolutely loved it. And Rafael is actually kind of a hero of mine mostly because of the way that he interacts with the community and encourages people and the fact that he spends a lot of time on code reviews in particular.

Thiago: Yeah, Rafael is great, and he taught us all about contributing to Rails. So he taught us how to get started, how to pick an issue, and things like that. And this is just a great way to learn from an expert, so show people that you can get started. You don't need to be an expert at all to contribute. And everything is community-driven a little bit. So everybody is a volunteer. So it's a good way to give back to the community. I really love the Ruby community.

And we started this project just to show people that the best way to learn is to just get started. So if you want to contribute to Rails, for example, just get started. And we do a live stream every week, and we try to contribute. And we've been learning a lot just by trying things out and then people join us, and they ask questions. So it's a great project that we're doing right now.

Rachael: Yeah, I completely agree. But I'm curious to hear your answer; why do you think open source is important, and why do you think it's valuable, not just from the company's perspective but from a contributor's?

Thiago: The best thing for contributors is that it's a huge codebase. It's scary. It's a great way to learn how to contribute to a big codebase. So for engineers, it's an important skill to have to learn how to work on a huge codebase and not be overwhelmed because this happens everywhere. So you join a company and it's a huge codebase, super scary. And then you have to figure that out on your own. And I think that contributing to open source is just a quick and easy way to build that skill to practice. So that's why we picked Rails because we love Rails, and we thought that it would be a great way to show people how to build that skill. So we are all about building the skills and practicing and not so much about telling people what to do.

Rachael: That's very true. You're talking about building skills and seeing a large codebase, and large codebases typically have very different needs from smaller codebases as well. You mentioned Ruby and Rails in the same sentence and also the fact that it can be difficult to go into a new codebase. Normally, when I think of Rails, I think about the MVC organization, convention over configuration, and how every Rails project looks similar. But you're saying that it can still be confusing with such a large codebase.

Thiago: Yeah, for sure. Because when you use a framework, the framework helps you organize the project, and it just gives you some guard rails and some structure to start your projects.

Rachael: Guard rails. [chuckles]

Thiago: Yeah, so you can start really quickly. But then if your project grows and it becomes massive, and it becomes a legacy project, there's really no pattern or there's really no good way to structure a large Rails codebase. Even the experts don't agree on how to do it, which is something interesting because some people say, "Oh, you should do it this way." And other people say, "At Shopify, we do it this way." And then another person says, "Oh, but that sucks. We do it this way here."

Rachael: [laughs]

Thiago: So there's no agreement. And then people want to know how to do it. They want to be given a solution but that doesn't exist. There's no solution. So you have to create your own, and you have to figure it out by yourself and with your team. But there's no solution for that right now. And that is true for any project. Like, you start with a framework, but then you have to build on top of it. And you have to build your own tools, and you have to grow, and you have to structure things. So you have to do it yourself.

Rachael: Yeah. You say that people don't agree and the experts don't agree, but they're working with very different parameters. Shopify has got different needs from maybe Twitter who decided to toss out Ruby altogether or even Netflix or GitHub.

Thiago: Yeah, and that's the thing about being an expert in growing a codebase. You have to figure out what makes sense for your organization. The thing that happens is that the codebase reflects the structure of the organization. And so there's really no cookie-cutter way to structure a large codebase anywhere. So you have to figure that out. So in your organization, you have to plan, and you have to talk to people, and you have to iterate, and then figure out how you're going to do it because there's really no solution to that. So that's part of the job of a software engineer is to collaborate and figure those things out because no one's going to tell you. There's no way, there's just no way to do it.

Rachael: And would you say that's the most difficult issue facing software engineers is figuring out how to scale these codebases and organize the code within them, and maybe handle reorganizing the code with them?

Thiago: Yeah, this is a big problem, dealing with legacy codebases and growing quickly. So if you work at a startup, it grows quickly and then the code becomes a mess, so this is one problem. But I think the biggest cause of that is also a lack of confidence. So developers lack the confidence to go and say, "Hey, I think we should do it this way," and then talk to the team and collaborate, and then come up with a solution. Most of the time, they're trying to look at other people, see what other people are doing, and trying to adopt that. And you get into this mess because you're trying to copy Shopify or trying to copy Google in your own organization, but you're not Google. So your organization is different. So if you try to go and copy what other people are doing because you think they are the experts and you try to copy them, your codebase becomes a mess because then no one can work with it. It becomes too complicated. So you have to build confidence.

I'm not saying you just have to invent something out of nowhere. I'm not saying just invent something new, that's not what I'm saying. What I'm saying is look at what other experts are doing and think for yourself okay, so what should I apply here? What would be the best decision here, and what would be the best decision now? Because it's also risky to structure the codebase one way, thinking about the future when we have 500 million users. And then you structure things now in a way that it's just impossible to work with, and you need 1,000 engineers to work on the codebase.

So you got to think about okay, what can we do now to put us in a good position for the next few months or years? And then iterate, plan for change because things are going to change. Maybe it's going to be a huge success. Maybe it's not going to be a huge success. But you have to make sure that the codebase that you're working with right now is going to support the growth of the company, and it's going to help the customer, which is the most important thing for me.

Rachael: It's interesting because I've heard a lot of similar things. I did an interview at one point...I'm trying to remember who it was with, but we were talking about microservices. And she said the most profound thing, which was that microservices don't remove any complexity. What they do is they move complexity from the application level to the infrastructure layer. And after that point, I've always looked at microservices and seeing them as a way of modeling your application so that it works for your team. And you're saying in the same way, when you're looking at your application architecture, it should be modeled based on the company's needs. And you can draw inspiration from those experts, but you need to modify it to match their own.

Thiago: Yeah, that's very true. So when we talk about microservices, it's easy to see the benefits, but then you have to think about your team. So let's say you work on a smaller team, you know, you have like 5 developers or 10 developers, a lot of experience working with early-stage startups. And they say, "Oh, let's build microservices. Let's put Kafka, and it's going to grow a lot. And it's going to handle 500 million users in the next month," or whatever. But then the infrastructure need, like, you need a DevOps person. You need to hire maybe an expert on that stuff. And you have to pay for a bunch of services, and you have to handle that, keep that in production, and keep that working. Why are you building the features for your first few customers?

Rachael: [laughs]

Thiago: So it's just impossible. You can't do that. You're just going to kill the startup.

Rachael: Yeah, you're going to kill it.

Thiago: That's what happens. It dies. So people can't do that. [laughs]

Rachael: You put too much complexity in, and you're focused on building out infrastructure to support those 100 million users. And you have how many users right now? So if we're not focused on building a platform for 100 million users, what should we be doing at that early stage?

Thiago: So for early-stage startups, your focus is on helping the customer so either a potential customer or maybe you're building a feature, so the company can try it out to see if it sticks, if there's a market need for that. But your job as an early-stage startup engineer is to make sure that the features that you are building are really needed. And it needs to be quick; the features need to come in one week, two weeks. So you have to prioritize ruthlessly so that the features that you're building can be put in production quickly and the startup is able to try it out with customers and maybe they need to close a customer and they need that feature. So you can't be worrying too much about 500 million users. You probably have to worry about one customer, two customers. So it's a very short time span. And it's also important for the engineer to have that empathy to understand what the clients need, what the market needs.

I know it sounds hard, but I've seen so many startups building things that no one needs, that is just ridiculous to me. Because it's very...I won't say easy, but it's very obvious when you're working on a project that no one needs because features become very opaque. You start working on things and you say, "But who's going to use this? I'm not sure. I don't know anyone that would need this." So it becomes very obvious. And I think one of the biggest skills that an engineer can have, can practice is this idea of thinking about the customer. So who's going to use this? You need that empathy, observing what customers do, not what they talk about because people talk about things and they lie. This is just nature.

Rachael: [laughs]

Thiago: They say, "Oh, we need this thing," but they don't. You have to look at what they do. So, what is the need that the customers have? And what is the job that this person is trying to get done by using your software? There are some discussions about this, some books that people can read. But the idea is just you listen to people.

And for example, for an early-stage startup, it's really easy. They always have some business development person or maybe a customer success person or maybe a founder that is talking to customers. You just say, "Hey, can I join the calls with customers? Can I participate? Can I read the tickets that customers open?" things like that. And they say, "Of course we want your help," because that's the easiest way to learn what people need. So you just look at what they're saying, what they're doing, how they behave, and then you try to understand, okay, so what is this person trying to do? How can I help this person be successful? So this is all about your customer success. And then when you go back to the code, you think about okay, if I build this feature, if I write this code, how is this going to make my customer successful, and my team successful, and my company successful? So that's how I see it.

Rachael: As a developer, how much of that responsibility lives with you to understand what the customers need and how much of that responsibility belongs with the PM?

Thiago: Some people say that the PM should care about those things or maybe the founder needs to care about those things. I don't agree for a very simple reason, because I am the engineer. I am building the features. I am staring at the abyss every day, you know, looking at the codebase. I know the problems. I know the limitations. And so, yes, I'm responsible for making sure that the codebase works and that things are progressing well. But I'm also responsible for building something that is useful. This to me is the most important skill for an engineer is not just to write code but write code that is useful because then there's no point in what we are doing. If you're an engineer, you don't build a bridge that no one's going to use. That is pointless. And so for an engineer, it is very comfortable to say, "Oh, I just write the code. I build the features, but I don't care about customers." You're just wasting your time pretty much.

Rachael: And if you're able to know what's happening in the code and what the customer needs, then you can talk with your PM and you're like, "Hey, I understand you want me to build it this way because the customer is asking for this. That's going to take me a month to build. I can deliver to you this in a week, and that's going to solve the exact same problem." And as a PM, they don't have that insight into what's happening under the hood and what those decisions are.

Thiago: Yeah, you're right on point here because if you wait for the PM to tell you what the customer needs, it is just too late in a startup. So you have to be part of the process. And for an engineer to have those skills, understanding the customer, you're just going to be a unicorn.

Rachael: [laughs]

Thiago: This is going to help you so much in your career. It's ridiculous I'm telling you. When I started thinking about the customer, my career just grew so much because of that because it also came from frustration. I started this career because I wanted to help people. I wanted to build things. Building things is cool, but I wanted to help people. And then I realized okay, I really want to help people, but the projects that I'm working on they're not helping anyone. So what's the point? So then I had to learn how can I understand the customer? How can I do research? How can I work on the right features? And then things started happening for me. It helped me so much and then for my business as well.

So I'm not building a massive platform to help engineers. No, that's not what I'm doing. What I'm doing now is deeply understanding the problems that developers have so that I can create something that helps them. So it's all about them, not about me. So this is something that early in my career I failed really hard at that because I thought that I was a great developer. I was good at writing code and knew all of the language features and all of that. But then when I started an agency with a partner back then, I just failed at being an engineer because the projects didn't go anywhere. I was working on something that wasn't helping anyone. But then when I realized okay, so why am I failing here? And I realized that I lacked the empathy, and I lacked the customer focus.

And so this is a tip that I give every engineer and some of them don't listen to me. But if there's something that I can tell people, like, you are an engineer, you want to be successful, you want to win, think about the customer because your PM is going to love you. The founder is going to love you. You're going to make money for the company. The customers will be happy. So everybody wins. That's how you win as a software engineer.

Rachael: Okay. So you mentioned before that you'd like to focus on the problems developers face. We've identified one of them which is that there's customer empathy lacking, and they're not building the right features. We've identified another one which is attempting to performance tune and build the foundation before you've got a customer base. What are some of the other major problems that software engineers face?

Thiago: One interesting problem that software engineers have which is kind of interesting is when they start growing in their career, they ask for help. So they want to learn the best practices. So you see that a lot. What are the best practices for Rails? What is the best practice for services or whatever?

Rachael: And this is a problem?

Thiago: They want to grow in their career. They want to learn, so that's okay. But then they ask for help and then what people tell them to do usually is, "Oh, go read this book. Oh, go see this tutorial, or go watch this course," whatever. This is bad advice. This is bad advice and not because the book is bad or the course is bad or whatever. But people don't tell you what to do with that information, which is the thing that is lacking. So what happens is someone comes to you and says, "Hey, I want to learn the best practice for a Rails codebase." And they say, "Go read this book. It's a good book." And the person buys the book and tries to read the book and then gets confused. And then spends months reading the book, and then doesn't do anything with that information sometimes.

So I think a better type of advice is how can I help this person build the skill and practice right away? So this is something that I'm obsessed about. If someone asks me a question, how can I give a piece of advice that is practical? You use this advice today, maybe you practice for 15 minutes, and you learn something new today. And then you get a win. You just get a win and say, "Oh, this is cool. I've learned something new. I can use that at my job and make the codebase better today." And then you keep practicing every day or every week. And so this is better advice, give something that the person is not going to feel overwhelmed because it's very easy to feel overwhelmed, and then practice and get better. And then you start getting the serotonin or whatever, and then you just keep practicing.

Rachael: [laughs] Yeah, that little nice hit of endorphins. I agree with that. I completely agree with that. I say something very similar. I tell all of my friends and people who are interested in software development that they should have a library of examples. When you learn something new, go build something with it and build it in the open that way, you can go reference it in the future. And you can look at it and be like, oh, I remember this one thing that I built forever ago. When you said they tell people to go look at a book or read a video or something like that, I was like, oh my gosh, he's going to say, "Go build something."

Thiago: [laughs]

Rachael: Like, that's what you need to do. In order to become a better software engineer, you need to build things that exist in the world.

Thiago: But build small things.

Rachael: Little things. [laughs]

Thiago: This is another advice that can be misleading. Sometimes we will say, "Oh, go build this app. Build Twitter," or whatever. And then people get overwhelmed. Better advice is, oh, build this little page where you can write a tweet, and you can do this today. So the thing is advice should be actionable and should be quick to implement. It should be urgent. So that's the thing that I'm trying to do. I'll give you an exercise, and it's a small one. And you can do it today, and you keep practicing, and you get better. So that's my whole thing about it. Like, if you want to improve as an engineer, you don't have infinite time. You don't have 10 hours a week to do that. Even if you do, most people don't want to spend 10 hours studying. Some people do it but most people don't. But how can I make their lives a little better just by giving them a little tip? It's something that they can do right away.

Rachael: I love that so much. I feel like as developers, even the concept like the word scope creep when we talk about that, we are talking about the scale of the feature. You mentioned earlier that you should be able to finish a feature in two weeks. How do you carve those off and make them smaller?

Thiago: That's a great question. In the past, I did a short workshop with a company in Brazil, and they would build an MVP for you in two weeks.

Rachael: Wow.

Thiago: Actually, it was one week, so it was three or four days. And I thought it was amazing, and I was like, "How can you do that? I spend months trying to build something and then it doesn't work or people don't care about it." And they said, "Well, you have to prioritize. And you only give so much time for the customers." For example, the customer comes and asks for a feature. You only give the customer a couple of hours to explain to you what they need. And then you say, "Okay, you want all of those things, but we only have three days. So what can we fit in three days?"

Rachael: [laughs]

Thiago: You just ruthlessly prioritize because most of the things that people think they need they just don't. It's just nice to have. So you just let them say, "Oh, I need all of those things," And then you say, "Okay, how can we make sure we can deliver this in one or two weeks? How can we leave for later?" So this is a skill that you can practice. But it's just this idea that there's always something like a core of a feature that you can develop quickly. And this is a thing that helps you de-risk the project.

I think one of the most important skills for a software engineer is knowing how to de-risk a project. So, how can I make sure there's not a lot of risk here? And then you go and say, "Okay, if I have this feature, the user can start using my app right away." So maybe they need search right now, or maybe you don't need to add it right now or maybe...you know what I mean? So you just go for something that's a quick win. You can show it to people, and they can start using it, and then you lower the risk.

So it's not about the time as much. So you can always spend a year working on something or whatever. For me, it's mostly about the risk because there are always a lot of risks in a software project, and they fail all the time. So how can I make sure it doesn't fail? One of the ways I can do it is to prioritize as much as possible. And people will get angry at you but usually after you explain things they say, "Okay, I agree with you." And it really works. So you can always build something in a couple of weeks that helps the customer, always.

Rachael: That makes sense especially when you mentioned they only have three days to build this, and you have to talk to the customer. When you first said that, I was thinking okay, so you talked to the customer, but earlier we agreed that customers lie about what they need. And then I thought okay, well, you spend three days building this prototype. It's the wrong thing. You show it to the customer. You've just failed faster. That customer can tell you, "That's the wrong thing. That's not actually what I need."

Thiago: Yeah, for sure. Software projects are so risky that it's better to fail fast than to waste three months.

Rachael: [laughs]

Thiago: So it's another way of de-risking a project because the customer has a budget. So the person doesn't have infinite money and infinite time. And so even if it fails, it should fail a week, two weeks, not a month. And if it fails, fail quickly because it's better because then you don't waste a bunch of time. I like to see features and projects more as bets than as things that are going to be useful or not. So it is more like a bet. So we are betting that this is going to work. This is going to help people. But we only allocate a limited amount of time, and I think it makes sense. It's related to Agile. So before scrum, we wanted to build features quickly, and we know that projects are risky. So what can we do? We make it smaller. We fail fast, and we keep iterating.

Rachael: That makes sense. You mentioned earlier that one of the core responsibilities of a software engineer is risk mitigation. And we talked about one risk which is that we're building a feature the customer doesn't actually want, but I'm imagining there's a lot more risk. Because you're right, software projects fail quite frequently.

Thiago: Yeah, projects fail all the time. And this is something that's kind of funny to me actually because if you look at building a bridge, I know that it probably also has problems. Sometimes bridges fall, and sometimes it takes longer to build a bridge, but you don't see that a lot. It's not like every bridge is falling apart everywhere right now. So there's something that is missing in [chuckles] maybe some places.

But there is something that is missing in our engineering where I think this is the risk thing. Software projects are risky by nature. And so you got to learn how to de-risk them as much as possible and make sure you win. So this is something that I used to talk to my clients say, "Hey, you want to build this app. How can you make sure you're going to win?" And one thing is lowering the risk, making it smaller and more focused. Another thing is researching, so making sure that the customer needs that. So just make sure that the customer needs that first before you write any line of code. And then sometimes what you can do...some people say you're Flintstoning it. So the Flintstones had the car without a motor.

Rachael: [laughs] Yeah, I love this.

Thiago: And so you just use your feet to push the car. And so you can do that a lot. So for example, you can use no-code tools to build little things and try them out, which is great. So you don't have to write code. You just get something out quickly, and then use forms for simple things. And then if you see people using that, then you build an app. You build the feature. So there's always a way to make it easier for you. And I think Rails is so good because it's very easy to build something with Rails; it's just ridiculous. Most people don't have that experience with Ruby on Rails, and they don't see the advantage of Ruby on Rails because it's just so easy to build something with Rails.

Rachael: I am convinced that people who don't believe in how easy Ruby on Rails is are not aware of the scaffold command. That's the only explanation I have. [laughs]

Thiago: Yeah, and it's funny because if you don't have the experience, you don't see the advantage. It's hard for you to understand.

Rachael: A brief aside for those of you who are not familiar with Rails. The scaffold command allows you to create all of the views, the database connection, and the controllers for routing and all of that stuff in one command for one model, and just by passing the form elements. Sorry, you were saying.

Thiago: I was saying that if you don't have the experience, you probably don't understand why it's so productive. And I've worked with many different technologies in the past. I worked with .NET, and Go, and Rust, and Elixir. Elixir is good too, but I think Ruby is just so productive when you learn the ins and outs. You learn how to work with the Rails codebase, and you learn database queries and things like that. It's very fast to build something. For startups, it's just a great tool. You want to get things out quickly. You want to try things out. You want to validate the market, validate the need. So for me, it's the best, Ruby on Rails. And probably Phoenix, Elixir Phoenix, is also good but I think Ruby is hard to beat in my opinion

Rachael: [laughs] For sure. You're not going to hear me disagreeing.

Thiago: [laughs]

Rachael: That's interesting. Okay, so we've talked about a couple of different project failure risks. What else do you see that hurts software projects in the long run other than the scope being too large or the feature not being what the customer wants?

Thiago: For software projects, this is something that's...I don't know. This is something that Sandi Metz talks about. You have to build things that are easy to change because it guarantees that in the future when things change inevitably, it's easy to implement that. It's flexible. And so just like Bruce Lee used to say, "Oh, be water," you know, behave like water. So you're flexible. You can feel a cup.

Rachael: You can adjust easily.

Thiago: Yeah. So you have to be adaptable and flexible. And I think for software products, for software engineering skills, it's important to be flexible. It's important to write code that is easy to change, easy to understand, which is super important, and just think about yourself tomorrow. So when you get back to this codebase tomorrow, are you going to be able to understand what's going on here? So just make sure that you are kind to yourself in the future and to your team as well.

Rachael: That makes a lot of sense. What you just said really reminds me of the bridge metaphor that we had before. You're right, we don't have bridges that collapse daily, but we also don't change bridges daily. One of the big things that happens with web products is you have continuous integration and continuous deployment. And you have constant changes that are occurring.

Thiago: Yeah, that is right. So this is something that makes projects more complicated where everything changes, but it's just the nature of business, business changes. Customers need different things. So you just got to make sure that things are flexible. Sandi Metz talks about how to refactor code to help you in the long run. So she talks about the Death Star class where Death Star class is the class that is super hard to understand. The code sucks, and it also changes a lot, which makes it even worse. And so those are the types of classes that you want to refactor and make better. Because if it's something that doesn't change a lot, the code sucks, but it doesn't change a lot, it doesn't matter; just leave it. But if it's something that is central, like it's part of the core of the business, it will change a lot. And if the code is bad, then it just makes things much, much harder because you touch that class, and everything breaks. So most people know the class by name, they know it's the email class or the user class. So make sure that those types of classes you make them better and you improve on them.

And there are some gems that help you. I forgot the name, but there are a couple of gems that can help you with that to identify the places that you can improve. This is something that can be hard for less experienced developers is the idea that code doesn't need to be perfect. It doesn't need to be the most clean code. It doesn't need to follow all the patterns all the time because then you're getting to the pattern anxiety. You're anxious because the code is not clean enough. So you have to be careful with that. There's no need to be super clean. It just needs to be explicit, easy to understand, easy to change.

Even if you can't make it better right now, just make sure that you can improve on it later when you have more context into the problem. So sometimes you're not sure. There's a problem you need to fix. There's a customer need that you don't understand very well right now. But in the future, when you have more context, when you have more clients, you can go and change that and make it better. So just think about yourself in the future. I don't know if I answered your question. [laughs]

Rachael: Definitely. You mentioned looking for those classes that are high churn, which are changes that are occurring to it and also very important to the business and are very complicated, and that that's a good time to refactor. But what is the right time to refactor? So we know which files we want to change and refactor. When do we decide to refactor those?

Thiago: I think that you can't expect your project manager to tell you, "Hey, go and refactor now. You have a week to do it," because they're not working on the codebase. And so I think it's your responsibility as an engineer and your team as well. So you talk to your team and you decide, okay, so I'm working on this feature now. Maybe it's a good opportunity for making this piece of code better or maybe it doesn't make sense right now. So you just got to talk to your team, you got to understand. Also, when you understand the problem better, you see okay, we developed this thing this way, but now customers are doing it this other way. Maybe it's a good time to change that. Maybe migrate some tables, change some things on the database to make our lives easier. You just got to talk to your team. Don't expect people to tell you when to do it because they're not going to.

Rachael: Yeah, you have to raise that.

Thiago: It's very rare for a project manager to understand that pain that developers have because this person is not working on the codebase, you are. So it's your responsibility to proactively try to make things better.

Rachael: And you mentioned doing this alongside projects that work on that feature.

Thiago: Yeah, I think it's a good idea when you're working on something related, just think about okay, we know that this class kind of sucks, and I'm going to touch that code anyway. So first you write the feature, write the test, and then it works as you expect. And then you can go wear your little refactoring hat and say, "Okay, let me just try to make this a little better, just a little better. It doesn't need to be perfect." Because this is also a problem that I used to have a lot and other developers have; it is this kind of perfectionism with the codebase. And it's just hard. You can't try to write perfect code because it doesn't exist. So just try to make things a little better. You touched some code, make it a little better.

And it's funny because if you make complicated code a little better, it gets much better. It's kind of a weird effect where every piece of complexity that you add to a codebase like to a method, maybe you add another. If there is something more complicated, if you are able to remove just a little bit of that complexity, maybe just one line of code, the complexity, in general, becomes much smaller. So it's kind of an exponential thing I think. So you just make it a little better, and it gets much better. So there's a big return on investment. So don't try to make it perfect. Just make it a little better. And you see that it improves a lot.

Rachael: Ooh, I like this. I like this as a theory particularly because we just talked about how high touch files like the high churned files are the most valuable ones to refactor. Well, you're touching those the most. So if you're just making little changes every single time, then that's going to get refactored the most. [laughs]

Thiago: Yeah, for sure. So you're touching that file a lot anyway. So if you can make it a little better every time you touch it, eventually it's going to be great. It's not going to be perfect. There's no such thing as perfection, but it's going to be better.

Rachael: I think also there was something you said that intrigued me. So you said that you release the feature and then handle the refactor. And that surprised me a little bit because I've always done it in the reverse order where I'll go in, I'll lint the file. I'll extract methods if necessary. I'll extract portions of the code into either a concern or something like that. But you're saying that you'd like to handle the refactor after the new feature.

Thiago: It's really hard for you to refactor something that is not present in the code. You know what I mean? So if you haven't built the feature yet, it's hard for you to know how it's going to look like. So if you refactor first, maybe your feature would change things a bit and then you have to refactor again. So I think it's, at least in my view, easier to create the feature, maybe it's complicated, but then you make it better. It's a little easier. But some people...it depends on the experience. Some people know how the feature is going to look like, and they know how to refactor already. So I guess it depends on your style. But for me, I think it's easier for me to build a feature, make sure that tests are passing, see how the code looks like and feels, and then see where it stinks, and then you make it a little better because it's just easier for me. I'm very visual, I guess. So I like seeing the code how it looks, how it feels.

And another thing that is kind of cool is...so I've learned this from a friend. He likes to write all the code for a feature in one big file. It sounds insane, but it's interesting because you see the whole code there. And then you can just move things around, and then refactor, and then put things in the right places. This is another technique you can use. So instead of writing the things in a bunch of different little files, maybe you can create this one file with all the things you need to do. And then you move them around and put them in the right places, but then they're going to be kind of right already. So this is one technique that people could use as well. I'm not saying write everything and leave it in one big file. That's not what I'm saying. I'm saying start with a file, and then you move things around.

Rachael: I like that. That's an interesting and cool idea. I mostly work with Rails applications, and Rails loves it when you have a billion little, tiny classes that only have a handful of methods in them and when the methods are in the classes they belong in. But if I were writing something like some sort of extraction or maybe several webhooks that were very similar that had to do some sort of data processing, that feels like it would be really convenient and easy because you would be able to skim through that file and see these two things are similar. So maybe I can extract something in common. It's an interesting technique, and I haven't heard of it before.

Thiago: Yeah, I don't know the name of it. I just learned this from a friend. He used to do that. So he would just write this big file with all the changes he needed, and then he would refactor. And then he would just put the code in the right places in other files. And it's kind of cool because you can just see everything and you see how the code feels. And you see the repetition there, and then you can just make it better. So this is one technique, one idea.

Rachael: That also might work really well for functional codebases where you can literally say, "I don't have any objects. These don't need to be in separate things. I can look at all of my functions at once and decide which ones work with what."

Thiago: Yes. So if you're doing Elixir, then that's awesome because it's just a bunch of little functions, and you say, "Okay, this function here should live here. And this other group of functions should live there, and that's it." [chuckles]

Rachael: That's really interesting. So you talk about de-risking, and you talk about working with a team, and growing as a software engineer. I'm wondering how much of this comes from your own personal experiences in the software industry.

Thiago: Yes, so this all comes from my experience working. So I worked at big corporations. I worked at small companies. I had my own agency working for startups. I worked for startups here in Canada as well, VC-funded or not. So I have seen pretty much everything, I guess, that an engineer could see. And I was always frustrated with the problem of projects failing because I think it's just a waste. There are so many talented people working in tech right now. They can do amazing things. They have a bunch of experience and knowledge and all of that. And then you put those people to work on things that don't help a customer, so it's kind of a waste of time.

And then you also look at all the amazing people that want to get into tech, that want to get their first job as a software developer. But the industry doesn't allow them to have that first experience. I was frustrated with that. My wife, for example, wasn't an engineer. She did literature. She studied literature and then transitioned into software development. And I see how painful that process was where you don't know anything. And then you look at advice and people tell you, "Hey, read a book or do a course or whatever." And you get stuck, and so it's terrible. [chuckles]

Rachael: That's my least favorite piece of advice for new programmers is learn Vim because they're already fighting with learning a language, learning how to use terminal tooling, and things like that. And that advice just abounds. And there are so many cases where I see people get caught up in like, I'm going to go through this tutorial, and then this tutorial, and this tutorial.

Thiago: Yeah, you get into tutorial hell. [laughter]

Rachael: And hopefully, hexdevs helps people avoid that by focusing on actionable things that they can do and saying, "Hey, just go contribute to Rails."

Thiago: Yeah, it sounds counterintuitive to say, "Hey, contribute to Rails," [laughs] but it's actually not because you're just working on the real codebase. It's not a toy codebase. This is something that people struggle with. They say, "Oh, I want to get started. What should I do?" And then someone says, "Oh, just work on this toy codebase because it's really easy. You're just going to understand," but then it's not the real thing. No codebase is like that.

Rachael: I absolutely agree. Finding an open-source project that is used is so valuable. My favorite is actually the codebases that are associated with Ruby for Good because people are working on applications, but there are real customers, and they have the capacity to help. If I can ask one last question, you mentioned a lot that you care about helping people. You care about helping customers. How much of that applies to what the product itself does? Is it just about helping customers, or is it also about making sure that the product itself helps the world?

Thiago: So I see that a successful product helps the customer and that helps the world. So if you're helping your customer, you're helping people and of course, if you're not doing anything shady or illegal or anything like that. Maybe you might be helping your customers to do something bad which is not good as well. So you got to be careful with that. But as long as you work for companies that are doing something good that you believe in them, you believe in the culture and the values and you help their customers, so that's a win for everyone.

And I also wanted to say, for example, sometimes I mentor developers as well. And one of the things that they struggle a lot with is not only learning but listening to my advice a little bit. So for example, someone comes to me and says, "Hey, Thiago, I want to become a Ruby developer. I want to learn and get my first job." And I say, "That's great. You're probably doing some tutorials, reading some books already, but you also have to network. Go to meetups, go to events, go to tech talks, maybe present a tech talk." And they don't listen. And sometimes I get frustrated because the easiest way to be seen as a developer, to be known is to connect with your local community, especially for Ruby. So the local Ruby communities are super great. They're super helpful, super open.

And so if you're listening and you want to learn, even if you're an experienced developer, it doesn't matter, it's really important to network, and meet people, and give talks. So there's always a conference looking for speakers, and you don't need to feel ready. You just have to do it. You don't need to be an expert. You just have to do it.

The point that I'm trying to make is as a software engineer, you have to help people. You have to help customers. You have to help mentors, the community around you. So if you give a talk, you're helping people. You know something. You've learned something and then you share that information with others, so that's your job. You have to do that. And it's also a great way to grow as an engineer. So people will know you, people will respect you. Your peers will admire you. They say, "Oh, you gave a great talk, Thiago," or "Rachael, I loved your livestream or your podcast." So people like it, and you're helping them. So that's I think the main thing that developers should care about is helping people, building things that help people.

Rachael: Building things that help people. I definitely echo and feel that sentiment. Well, we have learned an incredible amount about risk mitigation and some of the most difficult challenges facing software engineers and how those tend to be more about organization and product than they necessarily are about the actual software challenges that we face. I want to say I really appreciate you joining us.

Thiago: Thank you so much, Rachael, for inviting me. This was a great conversation. And I hope that people have the opportunity to learn a little bit. And, yeah, it's awesome to help. [chuckles]

Rachael: Thank you so much, Thiago.

Jonan: Thank you so much for joining us. We really appreciate it. You can find the show notes for this episode along with all of the rest of The Relicans podcasts on therelicans.com. In fact, most anything The Relicans get up to online will be on that site. We'll see you next week. Take care.
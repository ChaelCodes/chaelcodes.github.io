---
title: Computers on Wheels – Working on Self-Driving Cars with Dr. Mahmood Hikmet
category: podcast
description: Dr. Mahmood talks about why self-driving cars don't crash!
feature-img: /assets/img/podcasts/moodspolyglot.jpeg
image: /assets/img/podcasts/moodspolyglot.jpeg
layout: post
thumbnail: /assets/img/podcasts/moodspolyglot.jpeg
podcast_url: https://www.therelicans.com/mandymoore/computers-on-wheels-working-on-self-driving-cars-with-dr-mahmood-hikmet-16cl
excerpt_separator: <!--more-->
---
Today I'm visited by [Dr. Mahmood Hikmet](https://twitter.com/MoodyHikmet), Head of Research and Development at [Ohmio](https://ohmio.com/) and [HMI Technologies](https://www.hmi.co.nz/en-nz/), is currently tasked with overseeing and synchronizing research and development activity for autonomous vehicles. I know Moody through Twitch, and he's a science communicator focusing on bringing technical information to non-technical stakeholders. Throughout his career, he's been closely involved with the direct development of IoT infrastructure for intelligent transportation and mobility.
<!--more-->

> This podcast was released 02/03/2021 as part of the Polyglot Podcast - a series from The New Relic Relicans - both the series and team that created it have been dismantled. It was so much fun while it lasted, and I've recovered as much as possible from the Internet Archive.
>
> Huge Thanks to [Mandy Moore](https://mandymoore.tech/) who produced, edited, and put untold hours into this podcast. Without her work, the transcripts below (and episodes themselves) wouldn't have existed.

## Teaser
>Mahmood: So we're doing the same thing that Roomba does, except we're not picking anything up off the ground. [Laughter]
>
>Rachael: But you’re picking up people. [Laughs]
>
>Mahmood: Yeah, through a door, though.
>
>Rachael: [Laughs]
>
>Mahmood: Not via the power of suction. [Laughs]
>
>Rachael: That's the next optimization.

## [Full Transcript](https://web.archive.org/web/20220522232605/https://www.therelicans.com/mandymoore/computers-on-wheels-working-on-self-driving-cars-with-dr-mahmood-hikmet-16cl)

Jonan Scheffler: Hello and welcome to Polyglot, proudly brought to you by New Relic's developer relations team, The Relicans. Polyglot is about software design. It's about looking beyond languages to the patterns and methods that we as developers use to do our best work. You can join us every week to hear from developers who have stories to share about what has worked for them and may have some opinions about how best to write quality software. We may not always agree, but we are certainly going to have fun, and we will always do our best to level up together. You can find the show notes for this episode and all of The Relicans podcasts on developer.newrelic.com/podcasts. Thank you so much for joining us. Enjoy the show.

Rachael Wright-Munn: Hello, everyone, and welcome to the Polyglot podcast. Today I'm visited by Dr. Mahmood Hikmet who is the Head of Research and Development at Ohmio and HMI Technologies and is currently tasked with overseeing and synchronizing R&D activity for the autonomous vehicle program and all of their other areas of research too. I know Moody through Twitch, and he's a science communicator focusing on bringing technical information to non-technical stakeholders. Throughout his career, he's been closely involved with the direct development of IoT infrastructure for intelligent transportation and mobility. And I have to be honest; I’m really excited to talk about autonomous vehicles and all of your incredible experience, Moody.

Mahmood Hikmet: Thank you so much. I'm really excited to talk to you too.

Rachael: I think one of the things that's really interesting to me about autonomous vehicles is how many different ways they can fail and how you protect against that. That's just a really cool and interesting job. And when I think about all of the ways that it could go wrong with the intense rigor that's required to build something like that safely, it's really interesting.

Mahmood: They're essentially a computer on wheels. And most people's experience with computers or phones is that they crash or they fail.

Rachael: Ugh, yes.

Mahmood: [Chuckles] In that event, it's like ah, I need to restart Chrome, or I need to restart this app or whatever it is. But when it's a vehicle, people get a little bit antsy, and rightfully so. I'm not saying that it's an unreasonable fear. But understandably, people are a little bit more anxious around what happens if the vehicle fails like my computer fails? There are things we can do. There is lots of research and development effort that gets put into failing delicately or failing correctly because it's not a matter of if something fails; it’s when, and so you need to be prepared for that when. And as long as you've put enough stopgaps in place, then you shouldn't need to worry about it too much.

Rachael: When you say failover, that makes me think of failover servers and having a secondary system in place behind the other system. But it's hard to imagine two computers running simultaneously and just being like, okay, we're going to swap over to U.S. West 02 or whatever.

Mahmood: Okay, so let's take an example, so let's say we've got an obstacle detection system. Now, most systems use Lidar, and Lidar is very similar to Radar; some use Radar as well. But you can think of it as you know how in those old spy movies how you have in the submarines with the little thing that keeps rotating?

Rachael: Yeah, Radar.

Mahmood: Yeah, a Radar. [Laughs] That's the word I was looking for. But a Lidar does the same thing but with reflecting light off of objects. But it can do that a lot quicker because it's light rather than radio or sound waves that are being thrown, and we can stack that. So we have multiple beams all stacked on top of each other, and they're constantly spinning. And with that, you can create a three-dimensional point cloud of the world around you. So you get depth information from these sensors in a 360-degree fashion. These are usually the spinny things that you see on top of driverless cars that people test out; those are 360 Lidars. They come in all different shapes and forms, but that's used usually for obstacle detection. They have other uses as well. But in this case, let's just talk about obstacle detection. So something's going to come in front of the vehicle. These Lidars or these light beams will be able to bounce off that object and detect that something's in front of the vehicle. However, they detect things based on light reflectivity. So if someone's wearing something like a wool suit that's colored black, the light never comes back. So from the perspective of the sensor, that looks like a hole in front of it.

Rachael: [Laughs] I'm going to take a minute and go check my wardrobe and remove every single black sweater from it.

Mahmood: Well, lucky for you, there is a way to deal with that. Basically, there's no such thing as a perfect sensor. If we go and try to create the perfect sensor that will always be capable of detecting something in front of the vehicle, we're going to be spending so much money on those incremental 0.0001% increases that it's not really worth the effort and will never quite get to 100%. It's the law of diminishing returns.

Rachael: So what do you do when I jog out on a crosswalk in my black yoga pants wearing my black hoodie? How does the autonomous vehicle discover and not squash me?

Mahmood: Well, we're deciding to outlaw those. I'm joking. [Laughter]. We're not going to outlaw black. But no. So you can't really control the environment, and it's perfectly reasonable that someone wearing all black is going to walk in front of the vehicle, and we need to protect them. So rather than chasing a perfect sensor that will be able to detect everything, you can use two different sensors that are based on different modalities or different physical phenomena. They're not measuring the same thing. So rather than a Lidar and just a Lidar by itself, we can do a Lidar, and then we have an ultrasound device as well that's bouncing sound waves off of things in front of the vehicle. So on the off chance that yes, someone is wearing all black in front of the vehicle and they're perfectly absorbing all the light, they likely won't also be absorbing all sound waves that are being thrown their way.

Rachael: Perfect. So you're finding me via echolocation.

Mahmood: Yeah, echolocation, but that's just one way you can do it. You could put a Radar down there as well, which doesn't really care about the color of clothes you're wearing. So rather than chasing 100% safety or 100% reliability, having two different systems that are basically around 90% or 95%, multiple systems as well, ends up getting you much closer to the 100% a lot more cheaply and a lot more reasonably.

Rachael: Interesting. What happens when one of those sensors fails? And I don't mean in the sense of I'm wearing my black joggers, and I'm running in front of the Lidar; I mean in the sense that the actual device itself fails, like the actual sensor.

Mahmood: Good question. So we've got multiple layers of testing the critical systems inside the vehicle. So everyone builds their autonomous vehicles differently. So what I'm saying won't necessarily apply to absolutely everyone.

Rachael: Of course.

Mahmood: You'll see something similar maybe to what we're doing where we have a constant check-in. It's like an “I'm alive” sort of signal that gets put out by all the devices. And if one of those doesn't check-in, and it's a critical device, then the vehicle is in an emergency mode, and it says, “Look, there's critical information that I'm not receiving. I'm going to stop now until this is fixed,” and so the vehicle stops.

Rachael: Oh, so it literally breaks and stops.

Mahmood: Yes, we come to a complete stop for our vehicles. So maybe I'll go into a little bit of why we've made that decision.

Rachael: Yeah, absolutely.

Mahmood: For us, autonomous vehicles are something really, really new and the target -- So at Ohmio, what we're trying to do is targeting the first and last mile of transportation, usually public transportation. So these are shuttles that aren't intended to be purchased by a private citizen. They're more intended for public use or to be used around a campus or some sort of first, last and only mile. They're there to take you either to your bus stop or to your train station or wherever else you go. You take that rapid transit across town, and then maybe you get into another one of these shuttles that take you to the last mile to your destination.

Rachael: I can just imagine an autonomous vehicle zooming around a school campus.

Mahmood: Yeah, or a retirement village or a theme park or an airport, like all these sort of closed campuses that are, say, a mile long in their transit length, are perfect candidates for this sort of technology. Because we're dealing a lot with regulators and the public, and these are relatively new vehicles that are untested from the perspective of the industry, from the perspective of regulators, we need to be overly cautious rather than superefficient. So if the vehicle has a false positive in terms of an obstacle that it sees in front of it, we'd much rather have those than a false negative where the vehicle says, “Oh, it's probably nothing,” and then just carries on forward. Because the first time these vehicles get involved in some sort of accident could put an entire stop to the entire operation. So we need to prioritize safety over efficiency, at least for the foreseeable future. As we get more experienced and as the regulator gets more experienced, those lines will get closer and closer and closer to a good system that is perfectly reliable.

Rachael: That makes sense. I know you don't like the trolley problem.

Mahmood: [Chuckles]

Rachael: You recently released a YouTube video describing exactly why you don't like the trolley problem. But I want to ask you what happens when the brakes fail?

Mahmood: So the brakes are another one of those critical systems. So we're constantly checking if the brakes are working or not. It's a higher level of safety than what we've currently got on vehicles, likely the vehicle that you drive where you wouldn't know if the brakes failed halfway through until you tried to use them. These are actively checking if the brake is in a state that's working, that happens before every trip, and during the trip, we check the brake system as well. So if for whatever reason, the brake stops working, the vehicle says, "This is a really critical part of my drive, so I'm going to come to a stop now. I'm not going to drive anymore. Send out a technician." And it's really important to think of these as critical systems and non-critical systems because there are both. If the speakers inside the vehicle aren't working, you don't want the vehicle to put on an emergency brake or anything like that.

Rachael: [Chuckles]

Mahmood: But if a Lidar at the front stops working or the GPS stops working and the vehicle no longer knows what's in front of it or where it is, yeah, you want the vehicle to come to a stop because it's putting itself into an unknown state. And when it's in an unknown state, unknown failures can happen, and that's definitely not acceptable to anyone.

Rachael: We're talking about critical versus non-critical systems. How do you identify that?

Mahmood: It's a distinction that's made by the engineering team, but usually, you look at it as what would happen in the worst-case scenario if this part of the system failed? And if it does fail and it would cause a catastrophic event, then we say that that's a critical system. That's probably a very simple way of defining it there, and there's a little bit more that goes into it depending on what the system is. But yeah, that's basically how it is. What's the worst-case outcome if the system fails to the overall operation of the vehicle?

Rachael: And if we go into more detail?

Mahmood: Then it comes down to jurisdictions. It's like, what do you do in the event that your headlights fail? Because a headlight isn't really required for the operation of the vehicle during the day at least, but at night-time, it's mandated by law that you need to have the headlights working. Now, can the vehicle drive without headlights? Yes, but should it? In that case, you get a different definition of criticality there based on the time of day that this failure is occurring and the jurisdiction. Is it acceptable for this vehicle to be driving around without a headlight on? And in some cases, it might be other people might say, "No, it needs to definitely come to a stop if the headlights are out." And that's something that we can configure; it's not set in stone. So these are custom-built vehicles, and they'll have different rules based on where they are. It's like if you have a vehicle that drives on the right-hand side of the road when you move it to Australia or New Zealand, you can't have it driving on the right-hand side of the road anymore.

Rachael: [Chuckles]

Mahmood: So it's the same here. The criticality of different features or systems depends on the jurisdiction that they're in. But for the most part, we can agree on things like if the brake fails, we want it to not operate everywhere.

Rachael: Obviously, yeah. So what you're saying is what is failing -- The jurisdiction, I'm assuming by that you mean the configuration of it, or do you mean the actual device that is failing?

Mahmood: By jurisdiction, I mean where is the vehicle deployed legally speaking? Is it on a public road? Who's the transport authority that's sitting over it? Is it on a private road? If the vehicle gets involved in an accident, who's liable concerning that we're operating the vehicle in a perfectly good way? Getting into those things, that's what I mean by jurisdiction.

Rachael: This feels like a lot of different systems that are communicating. You have the sensor; you have something that's managing the jurisdiction. You have the actual brains of the car itself, which I'm assuming is a separate computer, and all of this is connected. How exactly are these connected? How are these transmissions, happening and what sort of redundancy is built into that system?

Mahmood: So it's different for us than everyone else because now we're getting into the actual systems inside the vehicle.

Rachael: Yes, please.

Mahmood: [Chuckles] So for us, we've gone for a distributed model where each system or each function of a vehicle is on its own computer or its own device, and they communicate with each other over a network inside the vehicle. Rather than having a supercomputer on wheels where it's one computer that's deciding everything, these are all spread out, and you have a system that's taking care of the Lidar, another one that's looking at the breaks, another one that's looking at the driving control. So the way we've done it is there's sort of an API that all of these systems communicate over; that's how it's done for us. But you can also do it in a centralized way where it's one computer program that's running everything to do with the vehicle.

Rachael: Each of these distributed computers for each system, can you go through what those systems are again? And I'm also really curious to know what they're built in because I know our audience will ask.

Mahmood: So, that changes depending on what the needs of the system are. So for example --

Rachael: Really?

Mahmood: [Chuckles] Yeah. So it's not just a copy-paste of the same computer absolutely everywhere. For example, the Lidar systems use a Linux computer because there's a lot of processing that's required around the data points and the clouds that come into it before we need to send it out over the network because otherwise, you'd end up flooding the network with data if you're sending that. So there needs to be a bit of processing there, and we do that with a general computer. Whereas something like the emergency button that's on the vehicle like the red button that's on the wall that anyone can press if they feel unsafe that brings the vehicle to a stop; we didn't want to put an operating system over the top of that because adding an operating system means that you're adding timing issues. They're not real-time; even if they say that they're a real-time operating system, a lot of the time, we found that that wasn't the case. So we try to get as close to bare metal as we can. So the emergency stop button is actually hooked up to electrical relays. So we're using electric circuits there as opposed to having a button that's an input of a GPIO into some computer that checks if that emergency button is pressed, and then it brings everything to a stop. This is a hard-line that's attached to the brake, so we come to a stop as fast as possible.

Rachael: That's amazing.

Mahmood: One of the questions I get asked a lot is what sort of AI do you have in your vehicle, or how do you go about using AI in your vehicles? And our approach, at least, is to not use AI wherever we can get away without using it. It's a last resort if we need it sort of thing. So for an emergency button, at least you want to keep things as simple as possible there. You don't really want to build a neural network that's detecting if someone is pressing the button or not. [Laughter] You want there to be no, this is a hard-line. We know what we want to happen, especially when this happens. So, if, for whatever reason, you can get away without using AI in your system and it works at an acceptable level to meet your requirements, then absolutely that's what you should do.

Rachael: And why is that?

Mahmood: Because when I'm saying AI, I'm talking about machine learning here. Machine learning, for example, it's a really, really nice tool to be able to get you to say 90% of where you need to be relatively quickly. You can turn over some really nice positive results from it. But the problem comes in with getting to that 100% or getting closer to that 100% where the law of diminishing returns comes in. So the way machine learning works if someone out there doesn't know, is rather than us telling the vehicle or us telling the system or programming it with a set of sequential instructions, we give it a bunch of data, and we say, "This is how you should behave,” and then the vehicle picks that up and learns by itself. The machine learns based on the data that's given to it. And it can do that relatively well, but it will still fail in some situations. And if we want to make it better, then we need to introduce more data, train it for longer. And then any testing that we'd done on our models prior, if we have updated those models with new information, that testing almost becomes moot. It's like you were testing a different model; now you've changed it, so all that testing before might fail. So you need to more or less throw it out. And then us as a small company, we don't really have that many people that work; we're about 20 people.

Rachael: You built self-driving cars with 20 people?

Mahmood: Yes.

Rachael: 20 engineers, or do you mean 20 people in the company?

Mahmood: It's like two companies that have been split off from each other. There are 20 people that are involved in Ohmio itself, and most of us are engineers. So the problem here comes from trying to get new data, and data is really, really expensive, so you need to have someone sitting there labeling things: yes, this is a drivable surface; this is not a drivable surface. The vehicle should be moving in this way in this place, and it shouldn't be moving in this way. And doing that for a small company is absolutely crippling because you're paying someone to build this huge data set for you, and I mean huge. You need to build a relatively big one to get a reliable system. So going down that road is a financially and time-wise very expensive endeavor. And if you can ever avoid that, then please avoid it. But if you have to use it, then you need to know what you're getting into as you embark on that journey.

We're talking about self-driving vehicles, and the first question you asked me on here is people asking about the safety of them. What happens if things fail? Well, when you introduce something like a machine learning algorithm, you don't really know why something failed or why it did it. It's just the algorithm didn't pick something up. And when there's a regulator or someone from the insurance industry sitting across the table from you as you try to explain that, it's a very hard sell in that case. So it's not just about the technology that you use, but I guess how confident you can get people on it without really over embellishing things as well.

Rachael: So it sounds like the key problems with using machine learning in an autonomous vehicle is one; you can't explain what's broken. Two, there is a degree of variability and uncertainty, and three, the amount of data you need to collect is enormous.

Mahmood: Yes. That's a pretty good summary from that. [Laughter]

Rachael: I’m glad. That makes me ask what systems do have to use machine learning?

Mahmood: The ones where you can't really model things very well, or you can't model things very easily. So I said Lidar before, we use machine learning to detect whether a surface is drivable or not drivable. That's one of the few places in our vehicle where we've actually trained a machine learning algorithm. And it sounds like an easy problem where you've got to just detect where the ground is using the Lidar. But you come into a problem where the reflectivity of different areas is slightly different. Or if there's a little bit of grass somewhere, the little grass blades trigger the beams of the Radar, so it looks like this static on the cameras. So we use machine learning to detect whether a surface is drivable or not.

Rachael: I 100% understand this because the roads in my neighborhood are like 30 years old, and they're practically gray. So I can imagine that when they're wet, they're lighter than a freshly paved road.

Mahmood: That can be the case.

Rachael: You talked a little bit earlier about how you harden these systems and how you protect them against issues. You know machine learning is going to introduce errors. How do you protect against it after the fact?

Mahmood: So we do that by having a redundant system on top of it. We’ve got the testing drivable surfaces in front of the vehicle, and we've also got an obstacle detection system as well which detects if there's something in front of the vehicle and if there is, then the vehicle stops for that. So that's sort of the fail-safe for that system where it's like, yeah, you're about to drive over something maybe that other system hasn't picked up. I haven't come across that case yet for us; our system there is pretty good. But if we're planning for it, then we've put other more, I guess traditionally programmed systems that detect if there's an obstacle in front of the vehicle before driving over it and stopping the driving. I wasn't trying to imply that we drive over it. [Laughter]

Rachael: I wouldn't accuse you of that.

Mahmood: Thank you.

Rachael: It sounds like, for every system that you have set up, there's a second redundant system, and that's basically how you harden everything.

Mahmood: Yes, that's true. For most systems that we've got there, there are redundant systems. If we're looking at motors, for example, we don't really have redundant motors.

Rachael: [Laughs] If the motor is dead, then the car's going to stop.

Mahmood: Exactly. So, in that case, it's fine. But I'm talking about the safety system. So if you've got obstacle detection in front of you or localization is another one, how does the vehicle know where it is? If you just use one localization, then as soon as that drops out, then the vehicle can no longer move.

Rachael: Yeah. So what happens when the GPS fails?

Mahmood: If you're just using GPS, it will come to a stop. But a GPS updates once per second; that’s how often you're getting updates. You can fill in the spaces in between using some sensor fusion based around the GPS data that's coming in, which is an absolute positioning system which tells you exactly where your location is. But you can also have relative positioning systems, which are things like the odometry of the vehicle, the steering angle of the wheels. We know what those are, and we know what our last location was. So we can infer where we're going to be, with, I guess, compounding error as time goes on. And as long as the time between GPS pulses is relatively short, then the compounding relative error isn't going to increase too much. But we can use the Lidars for positioning as well. So we can use something like a particle filter to place the vehicle and based on a pre-mapped point cloud of the locations that the vehicle could find itself in and based on the walls that it sees around it and the objects, the vehicle can place itself on that map. So there are different ways of going around localizing yourself.

Rachael: Interesting. So I think you've just described three different ways of localizing yourself. There's one where you have the GPS. There's another one where you basically communicate with the steering, and you communicate with the odometer to determine algorithmically where you are. And then the third one, it sounds like, is using Lidar to determine where you are.

Mahmood: Yes, you can do that. You can have a compass on board that's able to --

Rachael: What for?

Mahmood: Yeah, you can put a compass on there. We have an accelerometer that's detecting acceleration in different ways, and we put those all through a sensor fusion module. And a sensor fusion is exactly what it sounds like; it takes multiple data from different sensors and fuses it into one understanding of whatever those sensors are trying to read; in this case, it's the position of the vehicle. And we say that we believe that the vehicle is in this location with this certainty. And you do that by knowing what sensors are being fed into there and also the type of error that those sensors introduce. So as I said before, there's no such thing as a perfect sensor. Everything has its own precision and why it fails. So if you have something that was like a Gaussian error, you can model that inside the sensor fusion module, so you know what sort of error to expect from that specific sensor.

We've built our own beacon system as well that we can use indoors that tell you -- it's like GPS, but it uses a different radio frequency. And we can have those on little embedded computers that we just throw up in places where the GPS is a little bit lacking.

Rachael: Ooh. So sometimes you'll even manipulate the course in order to make sure that it's got access to the information that it needs to travel.

Mahmood: Yeah, exactly. And that's not what a level 5 vehicle does; we’re looking at level 4. So when we're talking about the levels of autonomy, they range from 0 to 5, 0 there's no autonomy, five it can drive everywhere, four is we can drive in places completely autonomously that have been defined by the manufacturer. So that allows us to really scope down the problem of a self-driving car into something that a small company like us can tackle because we're not, at our size, going to solve level 5. Google is trying to solve that problem, and they're well on their way, but they're still not there yet. There's no way that we can outtake or outspend Google in that regard. So we technically limit what we do, but through that limitation doesn't mean that there isn't a market for the product that we're putting out because there are people, there are organizations, there are councils that are wanting this technology.

Rachael: Because it can fulfill that purpose.

Mahmood: Yeah, exactly. Because it can still fulfill that purpose, it doesn't need to be an absolutely perfect technology. It can be a little bit simpler and still do the job well.

Rachael: I can even see this working in tracking situations or mail routes. There are a million different situations where you've got somebody who's driving the same route every single day.

Mahmood: Yeah, exactly. But it doesn't need to drive the same route either. We can dynamically select what the route is. I like to tell people, you can think of it like an autonomous tram that runs on virtual tracks. So we can change what those tracks are in software ahead of time. And then, we can tell the vehicle what path it needs to take over all the tracks that we've laid out previously. So the root of the vehicle is a subset of all the tracks that have been pre-mapped.

Rachael: Ooh. So every single Ohmio vehicle has access to all of the tracks that all of the vehicles have traveled. And how do you store that?

Mahmood: It's stored as coordinates that we've put down in place like a breadcrumb trail, and it's just a matter of saying, “These are the breadcrumbs that you need to follow,” and it creates a line between them that it needs to follow. So very much like laying down a track that the vehicle then needs to follow.

Rachael: How does it handle things like detours?

Mahmood: At the moment, the detours need to be put in place by the system that's overseeing things. So we need to send it a new route that says, "Don't go on this regular route, slightly change the route as well." But if, say something is standing in front of the vehicle -- As I said before, we are prioritizing safety over efficiency, so we don't let our vehicles leave the track that we've defined for it. We put a driver on the vehicle that is able to maneuver the vehicle around the obstacle using a joystick. Because we don't have a steering wheel or panels, so they use a joystick.

Rachael: The use a joystick?

Mahmood: Yeah, to drive the vehicle around the obstacle, and then we carry on.

Rachael: Interesting.

Mahmood: That's done so that we can completely put behind us things like the trolley problem, which is a very problematic question, but it comes from a lack of understanding about these vehicles. But rather than sitting there and arguing the point that no, this question is wrong because of this, we say, “Well, this question is not applicable to what we put out because the vehicle just comes to a stop immediately.” So it's not just about having a technical solution that works because if there's someone in front of you who doesn't believe in the technology and wants to throw up as many safety hazards that they're wanting to put a stop to the project, they're very well gone to be able to do that by constantly creating hypotheticals. So what you do is you rule those out so that those get out of the way, and you're able to operate maybe not in the same way that you wanted to but in a way that those don't even come into question.

Rachael: Yeah. Where if they say, "Oh, what happens if the Lidar fails?” You're like, "Oh well, the Radar kicks in." "What happens if the brakes fail?" "Well, we've got a button to pull the emergency brake." And they're like, "Well, what if this system to control the emergency brakes fail?" And they're like, "Well, it's a hard-line." I can see now how that regulatory body has influenced the design of this self-driving car. There are a couple of other things I want to ask about that you talked about before that are really interesting and exciting to me. You mentioned sensor flow, but before that, you've mentioned a couple of times real-time systems and GPS taking a full second to update, meaning that you have to estimate where the car is. How do those timing issues come into play when you're talking about these split-second decisions that you have to make?

Mahmood: Again, it depends on the system. The GPS, if it's coming in once every second, that's something we can account for because we know it's coming in once every second. So we don't need to rely on it to come in super, super, super quickly That's why we do sensor fusion on top of that, which is able to give us a final resolution about what's happening in between those accurate but less frequent updates. We get these little updates that might have a relative error. So if you rely on them for 10 seconds as opposed to 1 second, you get into trouble where the error compounds on top of itself, and you start drifting and becoming more uncertain over where your actual location is. So it's about just knowing what the hard-line timing requirements are for the system. So for us, if the GPS doesn't check-in or whatever our absolute positioning system is doesn't check-in for X amount of cycles, we can say, “Look, we've dropped signal here, so the vehicle isn't going to be moving anymore.”

Rachael: Interesting. This is something that you've touched on a couple of times: How does your vehicle communicate that it's in a bad state? Right now, you've got somebody in the car that's watching it at all times for regulatory reasons. But going forward, will the car itself communicate to somebody that there's an issue?

Mahmood: Yes. So there's this fleet management software out there, and there are providers whose whole business model is just creating these systems which manage fleets of autonomous vehicles or robots. So it would speak to that system, so that's a management system that sits on top of all these vehicles that they all communicate to. They can deal with things like demand and send vehicles on missions depending on what's needed.

Rachael: Okay. That's interesting and cool. The other thing that we were talking about before was sensor flow and bringing these different sensors together. So you've got all of these independent hub units. Can we briefly go through these and explore what each of these are? You mentioned that there's one that's managing Lidar and where the car is. And you mentioned there's one that's managing steering and driving, and there are some that are more intelligent, and there are some that are less intelligent. What are these systems?

Mahmood: We can break them down into four different categories. So the first one, and this is sort of the data flow as well, so it works in that sense. So the first category would be sensing, so these are our literal sensors. They're taking information from outside, and they turn that into a digital signal in some way. So that could be a camera, or a Lidar, or a GPS. It's something that is sensing something about the real world.

Rachael: And it sounds like machine learning is more heavily used in these detecting systems.

Mahmood: So this would be the next step. You're ahead of the class by one.

Rachael: [Laughs]

Mahmood: So after sensing comes perception. So based on the sensor input, what do I understand about the world? Is there a person in front of me based on these readings from the Lidar? So the sensor doesn't really tell you what it is that you're seeing. It gives you a bunch of values, but then the perception modules turn those readings into an understanding of the world. So if you've got a perception module that's based on obstacle detection, that could be hooked up to a Lidar that can detect if there's an object in front of you, and then the output from that perception module would be there is an obstacle 10 meters in front of me. But you can also have the Lidar sensor information being fed into a particle filter that's detecting where the vehicle is based on the things that it can see around it. So, in this case, we'd be using the same sensor information for two different types of perception, one for obstacle detection and the other for localization.

Rachael: Interesting.

Mahmood: We've got sensing; we've got perception. What do you think the next one is?

Rachael: So if you've got sensing, perception and perception contains obstacle avoidance and location, I would guess the next one would be navigation.

Mahmood: No, not quite, close.

Rachael: Am I a step ahead again?

Mahmood: I think you're too specific.

Rachael: Oh no.

Mahmood: The next one's called behavior. You've sent something, you've perceived what that thing is, now you decide what you do based on your understanding of what's in front of you. So in front of me, I've perceived an obstacle 10 meters ahead of me and I'm driving at this speed. What should I do? That's the behavior module. So the behavior modules understand -- They take an input from perception modules, and then they output what it is that you need to do. And the very last one is control based on what the behavior module wants the vehicle to do. It's the control module’s job to interface with the actuators such as the brake or the throttle in order to do what the vehicle wants to do. So you've got this perception as the sensing perception behavior control flow. And this is true for robots as well; not just autonomous vehicles but any sort of robot that interacts with the world would have a similar flow. But maybe some are more tightly coupled than others, maybe you've got some modules that do both your sensing and perception together, and the output is a perception. But there would be parts submodules inside that module that do sensing and perception separately from each other.

Rachael: I see. It sounds like these are going from dumbest to smartest. You have the sensors, and they're outputting raw signals, and that goes into the perception module. You mentioned that each of these have their own brains, their own decision-making powers. What does that live on? You mentioned the Lidar has to run on Linux in order to be able to understand all of the signals that are coming to it. What are we actually running here? And I mean specifically for the autonomous vehicles you create.

Mahmood: So the Lidar system that I talked to before was the perception part.

Rachael: It was the perception part.

Mahmood: So the sensor is the actual unit, the Lidar unit that we've got. And then the perception takes in the point cloud from that Lidar and then turns it into things like there is an obstacle this far ahead of me, and the obstacle is on the trajectory of the vehicle so it can figure out all that stuff. That's where I guess the perception module is what I was talking to when I said the general computer for the Lidar.

Rachael: And are you running C? Assembly? Are you using Rust?

Mahmood: C++ for those systems that we're really needing to run on general computers in a reliable way. We have used Python as well on the system. We've used C differently in our microcontrollers that we've put around the vehicle. So we try to get as close to C as possible if we're writing something for the vehicle. But sometimes you need to, especially when you're doing machine learning or something like that; C is going to be an incredibly arduous programming language to use to do that. So we need to go up to C++, then it's pretty abstracted after that. So then you're talking about the interface to the vehicle. If you've got what we call the management system or like the dashboard that the vehicle would have, that can be written in whatever language that you want to do as long as it can interface with the vehicle in the right way. So we've got this RESTful API that we've put on top of it that allows people to communicate with the vehicle while creating their own dashboard or the way that the vehicle looks on the screen in a way that suits whatever application that they're putting out.

Rachael: Okay. That's cool.

Mahmood: [Chuckles] Yeah, exactly. And we give them access to certain endpoints that can give the vehicle instructions like start the route now or stop now or turn the lights on or turn them off and that sort of thing. But they wouldn't be able to do things like instruct the vehicle to turn the steering wheel two degrees to the left or anything like that. But it's more giving missions to the vehicle: this is what I want you to do, get started with it. But then it's up to the vehicle and the stuff that we've written in order to make the decisions based on that mission.

Rachael: Wow. Okay. I feel like I've learned so much more about both robots and self-driving cars because this is a scenario where I know very little.

Mahmood: It's pretty fascinating. It's pretty striking to see how much shared ground there is between systems that are completely for different applications.

Rachael: It makes sense, though, because isn't a car technically a robot?

Mahmood: Yes, that line is being blurred a little bit as time goes on as cars become more like computers as time goes on. So, where do you draw the line of what is a robot? [Chuckles]

Rachael: Sorry, did I just ask the robotics-world-equivalent of is a hotdog a sandwich?

Mahmood: [Laughs] Yeah, you'll get different answers depending on what people understand because as you're getting into that level 1, level 2 level of autonomy. You're blurring the lines between human control and autonomous control. I guess it's a philosophical exercise as to what constitutes a robot at that point. But I think what we're building is definitely a robot on most people's scales. It's pretty safely in the robot category.

Rachael: [Laughs] Care to explain your reasoning?

Mahmood: Well, would you call a Roomba a robot?

Rachael: Yes.

Mahmood: So we're doing the same thing that Roomba does, except we're not picking anything up off the ground. [Laughter]

Rachael: But you’re picking up people. [Laughs]

Mahmood: Yeah, through a door, though.

Rachael: [Laughs]

Mahmood: Not via the power of suction. [Laughs]

Rachael: That's the next optimization.

Mahmood: Yeah, we don't do stops. We just pick them up as we're driving. [Laughter] We got to prioritize efficiency at all costs.

Rachael: One that has gentle bristles

Mahmood: [Laughs] Yeah, and it lands you on a cushion. You might be onto something for a new startup there. [Laughs]

Rachael: Oh yeah. I want to go back to something that you said before and you just referenced again. Now I know you've produced a 20-minute YouTube video on this, but I wonder if you could briefly summarize the differences between a level 0, level 1, level 2, level 3, level 4, and level 5 autonomous vehicle.

Mahmood: Very, very quickly, a level 0 vehicle has no autonomous function in it at all, so you can think of it like any vehicle. It's basically any vehicle that you drive. We always have to have your hands on the wheel and feet on the pedals at all times. A level 1 vehicle is when you can take either your hands off the wheel or your feet off the pedals but not both at the same time.

Rachael: So cruise control.

Mahmood: Yeah, cruise control would definitely be a level 1 autonomous feature. Level 2 is when you can take your hands off the wheel and feet off the pedals at the same time, but you still need to be actively supervising everything that the vehicle is doing. So adaptive cruise control with Lane Keep Assist would fall into a level 2 autonomy, those vehicles that parallel park for you, those ones where you just hit a button that would be a level 2 function. Tesla is currently at level two. You need to keep an active watch over everything that the vehicle is doing and intervene if it's about to do something that is dangerous.

Level 3 is like level 2 except so hands off the wheel feet off the pedals, but you don't need to be actively supervising everything that the vehicle is doing. You can divert your eyes off the road and play on your phone or read a newspaper or whatever, but the vehicle, if it's about to get into a situation which it's uncertain about, will throw control back over to you and say, "You need to handle it now." And there's a bit of controversy around whether this is something that should happen basically because the reaction time of humans is already diminished. We're not actively engaged in the driving process, but when you have an unsupervised, like an inattentive supervisor, then the reaction time is even lower than that. If someone decides to take a nap while their level 3 vehicle is driving, that's probably a recipe for disaster. But I guess the specification is there for it. I personally don't think they should exist. But we need to be able to point out a vehicle and say, “That's what that is.” So I think that's what the 3 is.

Level 4 is when the vehicle can drive completely autonomously based on a set of conditions outlaid by the manufacturer. And if it's about to enter into an uncertain situation or something that it doesn't quite know how to handle, it knows how to stop safely, and I guess, wait for user input. But these are the first vehicles where you don't need a steering wheel, for example, and you don't need a human in them, I guess. Unless something goes wrong and you need to drive it out of a place that it's unsure of or it can't drive out of, then you'd be able to intervene, but otherwise, it's up to the manufacturer. And these can range in complexity from something that is a level 4 function that can drive completely autonomously only on highways versus something that can drive autonomously. As long as the area has been Lidar mapped before and we've got a high definition map of the area, the vehicle would be able to drive autonomously in that. Or someone could say, “I want the vehicle to be able to drive completely autonomously,” but it only works in this one parking lot out of everywhere on earth, that would technically also be a level 4.

Rachael: [Laughs] I'm going to be honest here, I would pay for a car that just took me to the train station, right?

Mahmood: Yeah, it deals with the biggest barrier to public transport, which is that first and last mile. It's like, how do I get to the form of transport that I want to use without having to drive my car there?

Rachael: Exactly, or in my case, 1.2 miles.

Mahmood: Yeah, that's order of magnitude, but yeah. [Chuckles]

Rachael: It's a long walk.

Mahmood: Yeah. And basically, if it's raining, it's not good. And then finally, level 5 is what most people think of when they think of autonomous vehicles, which is a vehicle that's able to drive everywhere and anywhere completely autonomously. You can fall asleep in it, and nothing bad will happen. It knows how to get out of all situations. No, one's built this yet.

Rachael: Yeah, that’d be very exciting if they had.

Mahmood: There are ways of getting level 5 through level 4. So, for example, as I said before, if you can pre-map the locations, then a level 4 vehicle that depends on a Lidar map of the world around it in order to operate would be able to drive in that place. So if you do something crazy like pre-map the entire world, you'd be able to drive wherever you want to drive. And that's a really tech giant way of thinking about the problem, but it's certainly possible. But in that way, you'd be using level 4 technology to effectively get a level 5 vehicle.

Rachael: Honestly, I can see the entirety of San Francisco being mapped like Lidar mapped.

Mahmood: Yeah, absolutely. And you can see that there's a business case or a business model that can be built for companies that do nothing but Lidar map.

Rachael: There was just one more question that I had that you kept alluding to and that just made me very curious: Why a joystick?

Mahmood: It doesn't need to be a joystick, but joysticks are pretty small form, so we're able to hide them underneath a seat, for example, while the vehicle is moving normally. But if you don't need to occupy the space inside a vehicle with a steering wheel and a seat that's facing forward, and acceleration pedals, and braking pedals, then you can use that space for people on the vehicle. And for our vehicle, we don't have really a front and a back; it's a completely symmetrical vehicle. If we put down a steering wheel, we'd need to do it on both sides if we want the vehicle to drive.

Rachael: [Laughs]

Mahmood: And that's a lot of space that's being used up. So a joystick is a simple answer to that problem.

Rachael: That's interesting. So it really is entirely about the form factor and the design of the vehicle.

Mahmood: Yeah, exactly. And it helps as well because when we're simulating the vehicle because we've got a vehicle simulator, when we're stimulating the vehicle, we can just plug a joystick into a computer and also get the same inputs.

Rachael: Oh, that's very convenient. Yeah. It has been an absolute delight and pleasure talking to you. Is there anything that you'd like to mention before we finish this podcast?

Mahmood: I have a Twitch channel and a YouTube channel, so twitch.tv/sadmoody and [youtube.com/sadmoody](https://youtube.com/sadmoody]. I frequently go over autonomous vehicles, and I'm currently in the midst of a very productive few weeks of making autonomous vehicle content on YouTube, at least. If you want to know more about our company Ohmio, it's O-H-M-I-O: ohmio.com. If you put us into Google, all sorts of things will come out as well, which will be mostly about us or Spanish people talking about resistors, instead of ohm they use Ohmio. [Laughs] But there's not a lot of electronic Spanish content out there. But yeah, that would be it. Those are my points. Thank you so much for having me on.

Rachael: Thank you so much for coming to visit. This has been absolutely fascinating. And I loved chatting with you about inner workings and how you defend systems against issues, and how you design self-driving cars.

Mahmood: I love talking about them, so thanks for giving me that opportunity.

Jonan: Thank you so much for joining us. We really appreciate it. You can find the show notes for this episode along with all of the rest of The Relicans podcasts on therelicans.com. In fact, most anything The Relicans get up to online will be on that site. Right now, we're running a hackathon in partnership with dev.to called Hack the Planet, where we're giving away $20,000 in cash prizes along with many other fabulous gifts simply for participating. You'll also find news there shortly of FutureStack, our upcoming conference here at New Relic. We would love to have you join us. We'll see you next week. Take care.
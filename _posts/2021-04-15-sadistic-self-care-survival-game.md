---
layout: post
title: Sadistic Self-Care Survival Game
author: ChaelCodes
date: 2021-04-15 00:00:00 -0000
feature-img: /assets/img/posts/mockup.jpg
thumbnail: /assets/img/posts/mockup.jpg
tags: [ruby, DragonRuby, open-source, Amir Rajan, game dev]
---
Your body has been kind to you. It has tolerated your dehydration, exhaustion, hunger, and lack of exercise without complaint for YEARS. That ends today. This game built using the DragonRuby framework will remind you how generous your body has been with its mistreatment.


> This blog post is a companion guide to a [Twitch stream](https://twitch.tv/ChaelCodes) on 4/16 at 1500 UTC.

<img src="/assets/img/posts/DragonRuby.png" height="250px" alt="DragonRuby logo" style="display: block;margin-left: auto;margin-right: auto;" />

Let's start with the tools. [DragonRuby](https://dragonruby.itch.io/) is a game framework built on the Ruby specification. We'll be joined by one of the creators of that framework, Amir Rajan! It focuses on 2D game design, and the entire game state is stored in an object called args. It supports PC, Mac, Linux, Raspberry Pi, Web (wasm)iOS, Android, Nintendo Switch, XBOX One, and PS4. Let's target this one at a web release!

NOW IT'S TIME FOR THE GAME! I want to give the player a feeling of desperation as they use self-care techniques to keep their body alive and functioning. I plan to utilize status bars that slowly clutter the screen to help create that desperate feeling. For the first stream I want to focus on building one full core gameplay loop, then adding the rest.

In order to create the simplest version possible, I'd like to focus on the task screen and status bars. The game will start on a laptop screen with a 🍽 food status bar, 🥤 water status bar, and progress bar running on the screen.

![Prototype](/assets/img/posts/mockup.jpg)

The progress bar starts at 0%, and every tick, it increments by the product of all active status bars. If you have a full water and food bar, it increments by 1, but if your food and water are half-full, then it increments by .25. When the progress bar reaches 100, the player receives 💵$50. The time to completion is always displayed above the task.

If any status bar reaches 0, and there are no warnings for this, the character dies, and it's Game Over for the player. The status bars can be refilled by drinking water from a water bottle or eating a granola bar from the desk.

Drinking water and eating food to keep your status bars up so tasks complete faster is a good start, but it's meaningless if you run out of food or can't spend the mokney, so let's implement a store!

Item | Cost | Description
--- | --- | ---
Pomodoro Timer | $20 | Saves task process every 25%
Granola Bar | $2 | Increases food by 10 points
Sandwich | $8 | Increases food by 40 points, takes 5s to make

We also need to implement some breaks to refill your water bottle, make sandwiches, and do something about all that water you've been drinking. I'm not sure if we'll get to that part though. I'd like to implement additional status bars like 🍺 pee, 💩 waste, 💢 stress, 💫soreness, and 💤tiredness. I think completing tasks should increase stress and soreness, and tiredness should gradually rise! Maybe we can take a break to reduce stress and tiredness, and do some stretches to reduce soreness. I feel a whole system building out of this, but let's start with hunger and thirst!

> This blog post is a companion guide to a [Twitch stream](https://twitch.tv/ChaelCodes) on 4/16 at 1500 UTC.

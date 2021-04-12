---
layout: post
title: Sadistic Self-Care Survival Game
author: ChaelCodes
date: 2021-04-16 00:00:00 -0000
feature-img:
thumbnail:
tags: [ruby, DragonRuby, open-source, Amir Rajan, game dev]
---
Your body has been kind to you. It has tolerated your dehydration, exhaustion, hunger, and lack of exercise without complaint for YEARS. That ends today. This game built using the DragonRuby framework will remind you how generous your body has been with its mistreatment.

Let's start with the tools. [DragonRuby](https://dragonruby.itch.io/) is a game framework built on the Ruby specification. We'll be joined by one of the creators of that framework, Amir Rajan!

NOW IT'S TIME FOR THE GAME! I want to give the player a feeling of desperation as they use self-care techniques to keep their body alive and functioning. I plan to utilize status bars that slowly clutter the screen to help create that desperate feeling. For the first stream I want to focus on building one full core gameplay loop, then adding the rest.

Your character wakes up in a studio apartment with a half-full energy bar, half-full water bar, and $200 in their account. Every second, 2% of their water, and 1% of their energy disappears. They can drink water from the sink, and there's a granola bar in the fridge. There's a laptop on the desk. You can complete a task for money, but it takes 10 uninterrupted seconds. Your bars do not stop dropping during this time. If energy or water reach 0, then your character is hospitalized, which costs $2,000. If the player does not purchase food on day 1, then they will be trapped in a negative balance cycle, and repeatedly starve. Going to the hospital with a negative balance results in the character dying in the waiting room.

Players can buy food and items on the laptop. Store deliveries take one day.

Item | Cost | Benefit
--- | --- | ---
Sandwich(4) | $8 | Restores 40 hunger
Pomodoro Timer | $20 | Adds task breakpoints, so you can leave the task screen without losing progress
Water Bottle | $20 | Drink water while working on tasks, holds 20 water
Granola Bar(20) | $6 | Restores 5 hunger, eat during tasks

(These values are likely to change.)
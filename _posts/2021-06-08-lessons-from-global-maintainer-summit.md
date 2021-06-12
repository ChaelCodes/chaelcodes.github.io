---
title: Lessons from Global Maintainer Summit 2021
layout: post
description: The Global Maintainer Summit is a virtual event discussing open-source maintenance hosted by GitHub. I attended, because I love it, but you can use this guide to find out which talks to check after!
---
Global Maintainer Summit was a virtual event hosted on YouTube and Gather by GitHub. It's focused on key issues open-source maintainers experience. They had 6 topics with 2-3 talks each, and the schedule left ample break time so folks could chat between talks in Gather.

Gather worked well as a virtual event space. Having the option of video and audio in addition to a wandering avatar made for a nice experience. They had a schedule posted at the front, and the space felt very unique and interesting.

# Contributor Relations
Brandon Roberts of NgRX and Bartlomiej Plotka of Prometheus talked about their experiences and how the project's expectations around PRs change over time. In the beginning, merging PRs with loose guidelines helps you build functionality quickly, but as the project matures, that becomes dangerous. Deciding what your project's purpose is, making it extensible, and providing clear guidelines about what sorts of PRs will be accepted, and setting strong but manageable quality guidelines is necessary for the success of the project.

## Standout Talk
Rose Judge managed to cover the maintainer's role, why to say no to PRs, and how to gently say no in 15 minutes. I had a hard time keeping up with the notes on this one because she had a lot of wisdom and actionable advice to offer.

{% youtube "https://www.youtube.com/watch?v=3V4npnv8LsU" %}

# Maintianer Health
Myles Borin discussed his experience managing releases in node.js, inlcuding semver, support cycles, and how to onboard new releasers and share the responsibility. Angie Byron described the differences in collaboration needs for enterprise and open-source organizations, but her profiles of open-source contributors and maintainers were more impressive than the collaboration software takeaways.

[TODo: insert that slide]
Profiles included:
- "Drop-in" Dani - shows up once, never again
- "Life Happens" Lena - Key contributor who vanishes
- "Provisional" Pam - maintainer in training. can sign-off, but not merge
- "SPOF" Sally - The lone single person on this entire earth who knows how something works
- "Bad Actor" Betty - troll. tries to sneak in malicious code.

> I'm drop-in Dani, btw. Dev.To has [Twitch clips](https://github.com/forem/forem/pull/10577), and Rails has a [comparison validator](https://github.com/rails/rails/pull/40095), and now I'm gone! ✨

## Standout Talk
This was a hard one! I loved Angie Byron's profile of open-source roles, but ultimately, even if I don't agree with everything he said, Paulus Schoutson delivered a rapid-fire talk full of actionable tips for maintainers experiencing explosive growth in their project who need help. Everything from tools to dealing with trolls to keeping your maintainers.

# Project Health
Helen Hou-Sandí talked through the benefits of defining clear problems before working on a Pull Request. Some of the dangers of poorly defined (or missing!) issues are infinite feedback loops, the PR being discarded, or the wrong code being merged. Solutions for this include roadmaps, issues required for every PR, and sharing credit with folks who report ot triage issues.

Lorena Mesa reviewed the goals and challenges facing PyLadies. She covered upcoming programs, and the history of PyLadies in depth, but honestly, there's very little talk about the repo structure or implementation GitHub Actions.

## Standout Talk
I genuinely can't describe Ashley Williams' talk. It was one-part open-source manifesto, one-part Rust Foundation structure, and one-part frank plot to make companies pay for open-source. All delivered through rapid-fire quotes and wisdom.

> "The new job of Software Foundations is to highlight the cost and value of open-source maintenance." -Ashley Williams

# Measuring Success
Keely Hammond talks about how OKRs are set in Electron. They host an Electron Maintainer Summit for active contributors and key stakeholders. 1 week of easels and sticky notes. It is exactly as well-planned as a corporate offsite.

[TODO: video missing for this talk] Quick start to OSS health metrics

# Keynote by Kubernetes co-founder Brendan Burns
This keynote by Brendan Burns of Kubernetes described how it grew from a small project to the massive project it is today. In the beginning, during the growth phase, a maintainer needs to keep the project looking alive. He talked about piping integration test logs to IRC, and welcoming folks, even the 1000th time the maintainer's seen a question. When users surpass contributors, the rocket ship phase has started. Maintainers need to institue governance, formalize their processes, and know their users to survive this. The final maintenance phase is more about stabilizing and making room for extensions from new projects than new features.

# Contributor Relations II
Chrissy LaMaire talks about making sqlcollective/dbatools, which is a community that shares tools, scripts, and resource for DBAs. The community is spread across slack, youtube, twitter, twitch, and recently released a book. She discussed how they manage contributor and maintainer realtions.

Hong Phuc Dang discussed how FOSSASIA incentivizes open-source contributions through rewards, recognition, and fostering community. This talk had a good number of ideas and examples on what incentivizes contributors, and how to do it, everything from cash prizes to careers. 

## Stand-out Talk
I'm a little biased here. As a fan of Rails, and Eileen herself, I really enjoyed hearing how Rails manages to support 1.8 million websites, and 3052 contributors on only 11 core maintainers. They do it by dividing responsibilities between 5 teams: Triage, Issues, Commiters, Core, and Security. For more information, check the talk!

# Organizational Automation
Sorry! I missed all three of these.

The Bots of CPython

Mariatta Wijaya

Mistakes were made: Running an Open Source project

Ifiok Jr.

Robot Pedantry, Human Empathy: Automation and Homebrew

Mike McQuaid
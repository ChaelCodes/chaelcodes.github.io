---
layout: post
title: Lending some color to Tokei Open-Source
author: ChaelCodes
date: 2021-04-08 00:00:00 -0000
feature-img: /assets/img/posts/Tokei-no-color.JPG
tags: [rust, open-source, maxjacobson, tokei]
---
Time for another open-source adventure! We'll be joined by [Max Jacobson](https://twitter.com/maxjacobson) as we visit the Rust cli-tool [Tokei](https://github.com/XAMPPRocky/tokei). Tokei generates statistics around your code and language usage. For example, [chael.codes](https://www.chael.codes/2021/04/07/tokei-open-source.html) looks like:
![tokei code analysis](/assets/img/posts/Tokei-no-color.JPG)

Forem, the repo behind therelicans.com and dev.to, looks like this:
![tokei code analysis of Forem](/assets/img/posts/tokei-forem-no-color.JPG)

We're going to pick up [an issue](https://github.com/XAMPPRocky/tokei/issues/419) with a lot of discussion that hasn't been touched in 10 months that I personally like. Those screenshots before weren't very engaging, right? Let's add some lovely color to Tokei's terminal output!

>There are some requirements listed out in the issue above.
- It must look good in light and dark mode terminals
- A crate should manage colorizing the output
- A color flag should manage color output `--color (always|auto|never)`
- thick rows === should be bold and the thin rows --- dimmed

I think it'd look nice to give all the languages a cyan color, and emphasize the subtotals.

First step is identifying how we'll cover color output, and the issue points us to [colored](https://crates.io/crates/colored) which is based on a Ruby gem of [the same name](https://github.com/defunkt/colored). Usage is very straightforward. `println!("Hello, {}!", "world".green().bold())` will use the terminal's colors, and bold the text.
![the world in hello, world is green and bold](/assets/img/posts/terminal-color.JPG)
>Note that "cyan" or "green" may not always be cyan or green, they're just roles in your terminal color scheme.

Next, it's time to think about how and where to output these colors. Tokei implements a printer interface in [cli_utils.rs](https://github.com/XAMPPRocky/tokei/blob/611de1fc7b33027b918e97127c67825cc7408273/src/cli_utils.rs) which is where I found the [headers!](https://github.com/XAMPPRocky/tokei/blob/611de1fc7b33027b918e97127c67825cc7408273/src/cli_utils.rs#L150-L164)

With some lovely colors and style implemented in Tokei, it's time to think about those command line args and turning off color. Some people (like other computers) prefer not to have color. I think we handle this in [cli.rs](https://github.com/XAMPPRocky/tokei/blob/611de1fc7b33027b918e97127c67825cc7408273/src/cli.rs#L10-L26). [ShouldColorize](https://docs.rs/colored/2.0.0/colored/control/struct.ShouldColorize.html) respects environment variables like NOCOLOR and CLICOLOR, but flags seem helpful too. We should document this regardless.

> This is the technical plan for a [stream](https://twitch.tv/ChaelCodes) on 4/9. We'll start with project setup, and testing out Tokei at 1500UTC, then we'll be joined by Max Jacobson at 1800 UTC to complete the work of creating our changes and PR.
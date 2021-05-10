---
layout: post
title: The Invisible Zoom Streaming method
author: ChaelCodes
date: 2021-05-22 00:00:00 -0000
feature-img: "assets/img/posts/invisible_zoom/8-side-by-side-demo.PNG"
tags: [streaming, zoom]
---
Your stream guests know and love zoom, but it doesn't look very professional to just share a zoom window on your stream. This technique will allow for easily adding guests and sharing screens, without cropping zoom windows.

# Hide Zoom
## 1. Join the zoom call with your camera
The first step is joining a zoom call. You must use the desktop application to follow the rest of these steps. Your video feed will run through zoom. This is much easier, and your guests will see you.

## 2. Add zoom to OBS
Create a window capture in OBS, and select your zoom window. Exclude the cursor, and only capture the client area to remove any application window styling.

![screenshot of OBS window settings](/assets/img/posts/invisible_zoom/1-create-a-window-capture.PNG)

## 3. Unmirror your video
Inside zoom, your video will display mirrored by default. This only inverts your image on your zoom instance. Now that we're sharing that instance with the world, you want to unmirror it so text displays normally. Under video settings, ensure "Mirror my Image" is unchecked.

![Screenshot of zoom settings](/assets/img/posts/invisible_zoom/2-turn-off-mirrored-screen.png)
Optional: Slide "Touch up my appearance" all the way into "turn my bags into smokey eyes" territory. No foundation? No problem!

## 4. Share your _visible_ guests
You can hide everyone who has chosen not to share their video by checking hide non-video participants. This makes it easy to cue up guest changes, and also have a hidden producer running the show. If you have multiple guests, having a producer who can pass messages like "5 minutes left" or communicate with the next guest via zoom chat is really helpful.

![screenshot of zoom UI](/assets/img/posts/invisible_zoom/3-hide-non-video-participants.png)

While you're here, optionally uncheck "Always display participant names on their video.

## 5. Hide the rest of the zoom UI
Uncheck "Always show meeting controls" to have the option of hiding zoom's buttons.

Alt will cycle through displaying the zoom UI, showing participant names, and hiding everything. If you want to crop zoom's UI out, that also works. Note that hovering over the zoom UI area will bring it back, so keep your cursor above the bottom third.

![zoom in OBS with no participant names or UI](/assets/img/posts/invisible_zoom/4-no-participant-names-or-ui.PNG)

Your Zoom window in OBS should look like this.

## 6. Hide Zoom in OBS
Chromakey works by removing everything of one color. Normally, that color is green, but we can make it Zoom Grey. Chromakey also adds a little variability to catch green shadows, but we can strip all that range out, because zoom doesn't have lighting or shadows. Add a filter to the Zoom window source in OBS. Use a color key with a custom color of 1a1a1a, and set the similarity and smoothness all the way down to 1.
![screen shot of color key window](/assets/img/posts/invisible_zoom/5-apply-chroma-key.PNG)

Place an image beneath the zoom window in OBS, and now you've got a pretty great looking setup!

![final form of invisible zoom technique](/assets/img/posts/invisible_zoom/6-invisible-zoom-demo.PNG)

# Screenshare in Zoom
All of this is good, but we need screensharing for the real magic of zoom to activate. Don't worry, we won't have separate windows and captures. Seamless transitions from a conversation to presentation.

## Keep screenshare in one window
By default, when someone shares their screen, Zoom goes full-screen, and moves audience video into a second window, but you can set zoom to share a screen within the current view.

Turn on side-by-side view.
![side by side in zoom](/assets/img/posts/invisible_zoom/7-turn-on-side-by-side.PNG)

Your presentation will be on the left and your guests can be added and drop on the right!

![zoom looking good with slides and screenshare](/assets/img/posts/invisible_zoom/8-side-by-side-demo.PNG)

Now there's a great looking zoom presentation on an image background. You can sub in speakers without issue, and people can swap between presentations!

## Flaws
*You cannot screenshare while producing.* It will change your whole view. A secondary computer or your guest can screenshare.

*Zoom does not resize windows automatically.* You will need to adjust the zoom level if the user's screen is very large or very small.

# Don't forget audio!
Audio is a whole different challenge. When you capture audio from zoom, you will get everyone else's audio, but not your own. Zoom doesn't play your own audio back to you. There are two ways to handle this.
1. Have a producer who's responsible for communicating with guests, and streaming the zoom, but doesn't appear on-screen. This has the added benefit of giving you a moderator who's focused on chat and production.
2. Stitch your audio together using loopback, voicemeeter, or two audio inputs in OBS. If you use two audio inputs in OBS, then you will have issues [captioning](https://dev.to/chaelcodes/how-to-caption-your-twitch-streams-5e63), because all captioning plugins that I know of use one audio input as the source.

# Summary
This isn't the greatest and most technically proficient guest setup that has ever existed, but it is a robust, easy solution that uses technology your guests are confident in. It's a great option for panels or small-scale live conferences and meetups. Let me know if you try this out, or come up with ways to deal with those flaws above!

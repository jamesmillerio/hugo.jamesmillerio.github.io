---
title: "Connecting Go to the IFTTT Maker Channel"
date: "2015-07-31"
---

The other day, I noticed that IFTTT has added a new channel called the [IFTTT Maker Channel](https://ifttt.com/maker). The premise being that you can send a POST or GET request to IFTTT to trigger a recipe. This opens up IFTTT quite a lot if you want to do some really custom work without trying to shoehorn a combination of workflows into producing some desired result. A few days later I also noticed they released a [Spotify Channel](https://ifttt.com/spotify), something else I'd been hoping for.

For a while I'd wanted to create a dynamic playlist that grows as people recommend music from various locations around the web like [r/music](http://www.reddit.com/r/music) and [r/listentothis](http://www.reddit.com/r/). With the addition of those two channels, it becomes fairly easy.

That being said, I put together a small library named [Go-IFTTT-Maker](https://github.com/jamesmillerio/go-ifttt-maker) for posting to the IFTTT Maker Channel and threw it up on Github. All it does is provide an object that accepts the three arguments you can pass to the Maker Channel and a Send method that accepts your API key and the event you're posting to. That's it. Here's a simple code snippet.

<script src="https://gist.github.com/jamesmillerio/cb3fe1446c314b245402.js"></script>

I've already made a few applications from this library that I might throw up on Github soon. One for calling the IFTTT Maker Channel from the command line and another that transfers music recommendations to a Spotify playlist. The former is nice if you want to create some really custom recipes from your machine.

If you're at all interested in that Spotify playlist, it's also [available here](https://open.spotify.com/user/1278133214/playlist/4QoH6mftV3FDRd5pSj3SDo).

---
title: "I made a thing: Goboom, a Go port of Boom"
date: "2015-08-15"
---

The other day, while playing around with some Alfred workflows, I had the need to store small bits of data between workflows in a key/value fashion. In the past, I've used either environment variables to do so or something like [boom](https://github.com/holman/boom) by [Zach Holman](http://zachholman.com). I don't really like defining tons of environment variables for stuff like this, so boom was a natural fit.

After creating the workflow and adding boom to it, I ran into some issues related to running Ruby via an embedded Alfred script. The way Alfred runs scripts can cause some weirdness and usually involves the user having to source their .zshrc (or .bashrc) in order to configure their terminal to work the way they expect. After doing so, I still had some issues with Ruby and being that I'm not a Ruby guy in the slightest I did what any programmer would do... *over-engineer!*

I decided to create a clone of boom written in Go. It doesn't help that I've been looking for Go projects to work on lately and this was simple enough to bang out in a few days.

It's called **[goboom](https://github.com/jamesmillerio/goboom)**. Yeah yeah, the name isn't as snappy as boom, but we can't all be perfect can we? Many of the commands are the same and, assuming you've used boom in the past, it uses your existing .boom file as its data source.

A bit of warning though... I just "finished" this and I'm still working out the kinks, not to mention adding better test coverage. That being said... make a backup of your .boom file if you choose to use goboom. I have no reason to believe any data loss is occuring, just better to be safe than sorry.

So go forth, and goboom the \*\*\*\* out of things.

<script src="https://gist.github.com/jamesmillerio/858fefd5fa3d7772659a.js"></script>

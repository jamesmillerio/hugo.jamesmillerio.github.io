---
title: "I made a thing: gpio-to-mqtt"
date: "2017-03-25"
tags: ["Raspberry Pi", "MQTT", "GPIO", "Go"]
---

I've wanted to formalize this project for a while and just recently got some free time to do so. [gpio-to-mqtt](https://github.com/jamesmillerio/gpio-to-mqtt) is a Go application that monitors state changes to GPIO pins on a Raspberry Pi and relays those changes as JSON messages to an MQTT broker.

That's a mouthful. Hear me out though.

Say you have an old alarm system in your house that you aren't using. You have the little magnetic reed switches on your windows and maybe some door jamb switches that all run back to a central security system box somewhere in a laundry room, garage, basement, or wherever. With this application, you can repurpose those devices and make them smart. gpio-to-mqtt will notify anyone listening when the those switches are tripped. 

All it requires is a Raspberry Pi, a network connection, and Go + gpio-to-mqtt to get running.

Once you have this up and running, you can write any number of utility applications to listen to the broker on your network and perform other actions. Maybe you get a notification every time your front door opens or when someone opens a window unexpectedly. You could even just connect physical buttons to the GPIO pins and to use them as network attached buttons.

There is still some development work to be done at this point, a lot of which surrounds additional MQTT options (like the ability to connect using certificates). I'm going to follow this post up with my set up for people to reference if needed. For the time being, here's what my install looks like.

Have fun!

![Raspberry Pi with a Pi EzConnect HAT running gpio-to-mqtt](/img/raspberrypi.JPG)
---
date: "2016-07-12"
description: ""
tags: [ "Amazon" ,"IoT" ]
title: "My Experience Hacking The Amazon Dash Button"
icon: "/img/AWS_IoT_button_short.jpg"
---

A lot has been written about how to hack [Amazon Dash buttons](https://www.amazon.com/Dash-Buttons) to do your bidding.
When Amazon announced their [AWS IoT buttons](https://aws.amazon.com/iot/button/), I immediately preordered one but I also
purchased a regular Dash button to play with in the interim. My first thought about the whole ordeal was "Why buy the $20 IoT
button when you can just get a regular dash button for much cheaper and hack it?" Turns out, there is at least one reason...

Reading a lot of blogs about how this is accomplished ahead of time, I got an idea for how it worked. Most made it seem like it
was a fairly simple ordeal: Set up the button in the Amazon app but stop short of selecting an item for it to ship and voilà,
you can then write a bit of code to monitor your network for button presses.

At the time I did this, none of the articles I read mentioned one particular annoyance with using the button this way. When you set
up the button this effectively associates the button with your account. Now that it's associated with your account and because you haven't
selected an item yet, the Amazon app will send a push notification to your device every time the button is pressed letting you know
you haven't selected an item...

If you're anything like me, that would be incredibly annoying.

![Item Not Selected Notification](/img/dashbuttonnotification.png)

Sure, you could turn off notifications for the Amazon app but I actually find the notifications it offers kind of useful. So
that was a no-go for me. Another suggestion I've seen thrown around recently is to create a separate Amazon account and
set it up using that account. That would work fine, but felt kind of overkill for the purpose it was serving for me.

I did take it as far as writing a Go app for toggling our Vera between home and away modes, but the notifications made it less appealing.

At this point I'm just waiting on my IoT button to ship in August and meanwhile using the button to (not) order over priced
laundry detergent...

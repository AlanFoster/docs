---
title: "Getting Started - Developing with Ruby and Respoke"
shortTitle: "Getting Started"
date: 2014-10-15
template: article.jade
showInMenu: "true"
menuOrder: 10
meta:
    keywords: "respoke, Ruby, webrtc"
    description: "Guide on how to get started developing with Ruby and Respoke."
---

###Ruby Library
# Getting Started

## Overview

The Respoke Ruby library provides a convenient way for Node developers to interface with Respoke for non-browser-to-browser communication tasks. Good examples of non-browser-to-browser communication tasks include authentication.

## Install Respoke Ruby

Install Respoke as a local application dependency using npm:

    gem install respoke
    
## Create Respoke

Finally, create an instance of Respoke:

    require "respoke"

    client = Respoke::Client.new(app_secret: "eb327e57-e766-49de-b801-ef612a70509e")

That's it! Now we're ready to start using all this Respoke server library has to offer.
    

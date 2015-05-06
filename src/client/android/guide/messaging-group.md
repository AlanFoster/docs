---
title: "Messaging (Group) - Respoke Android SDK"
shortTitle: "Messaging (Group)"
date: 2015-04-20
template: article.jade
showInMenu: "true"
menuOrder: 50
meta:
    keywords: "respoke, group, messaging"
    description: "Learn how to send group messages using Respoke"
---

###Android SDK
# Messaging (Group)

## Overview

Sending messages to a group of people is easy using Respoke. First, [join a group](/client/android/guide/group-discovery.html) and then we're ready to start writing some code.

## Send Group Message

Next, send a message to the group.

    package com.digium.respoke;

    import com.digium.respokesdk.Respoke;
    import com.digium.respokesdk.RespokeClient;
    import com.digium.respokesdk.RespokeConnection;
    import com.digium.respokesdk.RespokeEndpoint;
    import com.digium.respokesdk.RespokeGroup;

    public class Main implements RespokeClient.Listener, RespokeGroup.Listener, RespokeEndpoint.Listener,  RespokeDirectConnection.Listener, RespokeCall.Listener {
        public RespokeClient client;
        public RespokeGroup group;

        public void sendMessage() {
            group.sendMessage(message, new Respoke.TaskCompletionListener() {
                @Override
                public void onSuccess() {
                    Log.d("Main", "message sent");
                }

                @Override
                public void onError(String errorMessage) {
                    Log.d("Main", "Error sending message!");
                }
            }); 
        }
    }
    
Finally, listen for incoming messages by implementing the onMessage method of the RespokeGroup.Listener interface.

    public void onMessage(String message, Date timestamp, RespokeEndpoint endpoint) {
        String endpointId = endpoint.getEndpointID();
    }
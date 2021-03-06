---
title: "Audio Conferencing - Respoke JavaScript Library"
shortTitle: "Audio Conferening"
date: 2015-04-20
template: article.jade
showInMenu: "true"
menuOrder: 80
meta:
    keywords: "respoke, audio conference, webrtc"
    description: "Learn how to start an audio conference with Respoke"
---

###JavaScript Library
# Audio Conferencing

## Overview

Audio conferencing is easy using Respoke. First, [join a group](/client/javascript/guide/group-joining.html) and then we're ready to start writing some code.

## Starting Audio Conferencing

Next, save the group instance you joined.

    var _this = this;
    
    client.listen("connect", function() {
        client.join({
            id: "united-federation-of-planets",
            
            onSuccess: function(group) {
                _this.group = group;
            }
        });
    });


Finally, join a conference call.

    var group = _this.group;

    var conference = group.joinConference({
        onConnect: function(e) {
            _this.call = e.call;
        }
    });
   
## Managing Conference Participants

Manage conference participants using Respoke [groups](/client/javascript/guide/group-joining.html).

    var conference = group.joinConference({
        onConnect: function(e) {
            _this.call = e.call;
           
            // Manage conference participants
            client.join({
                id: "united-federation-of-planets-conference",
            
                onSuccess: function(conferenceGroup) {
                    _this.conferenceGroup = conferenceGroup;
                    
                    conferenceGroup.listen("join", function(e) {
                        var endpoint = e.connection.getEndpoint();
                    });
                
                    conferenceGroup.listen("leave", function(e) {
                        var endpoint = e.connection.getEndpoint();
                    });
                
                    conferenceGroup.getMembers({
                        onSuccess: function(connections) {
                            connections.forEach(function(connection){
                                var endpoint = connection.getEndpoint();
                            });
                        }
                    });
                }
            });
        }
    });

Then, when ready, leave the conference.

    call.hangup();
    conferenceGroup.leave();
    
Finally, clear the list of conference participants from the UI.

    document.getElementById("conference-list").innerHTML = null;


## Conference Audio Controls

You can mute or unmute an audio call.

    call.toggleAudio();
    
Additionally, you can hangup a call.

    call.hangup(); 
    
Hanging up a call will trigger a hangup event.

    call.listen("hangup", function(e) {
        call = null;
    });
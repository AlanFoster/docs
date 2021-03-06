---
title: "Group Joining - Respoke JavaScript Library"
shortTitle: "Group Joining"
date: 2015-04-20
template: article.jade
showInMenu: "true"
menuOrder: 30
meta:
    keywords: "respoke, group, joining"
    description: "Learn how to do group joining using Respoke"
---

###JavaScript Library
# Group Joining

## Overview

The group forms the foundation for conversations beyond 1:1 peers. To create a group you must be connected to Respoke either in [development mode](/client/javascript/getting-started.html) or [authenticated](/client/javascript/guide/authentication.html).

Once connectivity is established, we're ready to start writing some code.


## Joining Groups

First [connect to Respoke](/client/javascript/getting-started.html) and listen for the `connect` event. Then you can join a group.

    client.listen("connect", function() {
        client.join({
            id: "united-federation-of-planets",
            
            onSuccess: function(group) {
                group.listen("join", function(e) {
                    var endpoint = e.connection.getEndpoint();
                });
                
                group.listen("leave", function(e) {
                    var endpoint = e.connection.getEndpoint();
                });
                
                group.getMembers({
                    onSuccess: function(connections) {
                        connections.forEach(function(connection){
                            var endpoint = connection.getEndpoint();
                        });
                    }
                });
            }
        });
    });  
    
Once successful, Respoke will return the `group` you joined. You can listen for when people `join` or `leave` this group. Additionally, you can get a list of group members.
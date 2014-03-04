![image](http://assets.fishrod.co.uk/emails/signatures/logo-new.gif)

# Sails.IO for Objective-C
Sails.IO wrapper port for Objective-C so that you can interact with Sails blueprint routes over Sockets and subscribe to changes in your models over Socket.IO (WebSockets).

# Dependencies
* [Socket.IO-objc](https://github.com/pkyeck/socket.IO-objc)

# Usage
* Include ```#import "SocketIO+SailsIO.h"```
* Connect to your Sails server

```
_socket = [[SocketIO alloc] initWithDelegate:self];
    [_socket connectToHost:@"localhost" onPort:1337];    
```
* Make a get request

```
[_socket get:@"/user" withData:nil callback:^(id response) {
        NSLog(@"Records: %@", response);
}];
```

* Disable authorisation in config/sockets.js in your Sails project, otherwise you won't be able to connect
* All events will come through the usual Socket.IO-objc event delegates


# ToDO
[--] - Turn into CocoaPod
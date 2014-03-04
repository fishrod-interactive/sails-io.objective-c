//
//  FRViewController.h
//  Socket.IO
//
//  Created by Gavin Williams on 04/03/2014.
//  Copyright (c) 2014 Fishrod Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <socket.IO/SocketIOPacket.h>
#import "SocketIO+SailsIO.h"

@interface FRViewController : UIViewController<SocketIODelegate>

@end

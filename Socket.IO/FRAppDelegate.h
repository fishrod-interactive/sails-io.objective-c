//
//  FRAppDelegate.h
//  Socket.IO
//
//  Created by Gavin Williams on 04/03/2014.
//  Copyright (c) 2014 Fishrod Interactive. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SocketIO+SailsIO.h"

@interface FRAppDelegate : UIResponder <UIApplicationDelegate, SocketIODelegate>

@property (strong, nonatomic) UIWindow *window;

@end

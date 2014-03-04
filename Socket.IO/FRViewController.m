//
//  FRViewController.m
//  Socket.IO
//
//  Created by Gavin Williams on 04/03/2014.
//  Copyright (c) 2014 Fishrod Interactive. All rights reserved.
//

#import "FRViewController.h"

@interface FRViewController ()

@end

@implementation FRViewController {
    SocketIO *_socket;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    
    _socket = [[SocketIO alloc] initWithDelegate:self];
    [_socket connectToHost:@"localhost" onPort:1337];
    [_socket get:@"/user" withData:nil callback:^(id response) {
        NSLog(@"Response: %@", response);
    }];
    
}


- (void) socketIODidConnect:(SocketIO *)socket {
    NSLog(@"Connected");
    
}

// message delegate
- (void) socketIO:(SocketIO *)socket didReceiveMessage:(SocketIOPacket *)packet
{
    NSLog(@"didReceiveMessage >>> data: %@", packet.data);
}

// event delegate
- (void) socketIO:(SocketIO *)socket didReceiveEvent:(SocketIOPacket *)packet
{
    
    NSLog(@"didReceiveEvent >>> data: %@", packet.data);
}

- (void) socketIO:(SocketIO *)socket onError:(NSError *)error {
    NSLog(@"Error");
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

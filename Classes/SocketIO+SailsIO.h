//
//  SocketIO+SailsIO.h
//  Socket.IO
//
//  Created by Gavin Williams on 04/03/2014.
//  Copyright (c) 2014 Fishrod Interactive. All rights reserved.
//

#import <Socket.IO/SocketIO.h>

@interface SocketIO (SailsIO)

#pragma mark - Request convenience methods
- (void) get:(NSString *) url withData: (NSDictionary *) data callback:(void (^)(id response)) callback;

- (void) post:(NSString *) url withData: (NSDictionary *) data callback:(void (^)(id response)) callback;

- (void) put:(NSString *) url withData:(NSDictionary *) data callback:(void (^)(id response)) callback;

- (void) delete:(NSString *) url withData:(NSDictionary *) data callback:(void (^)(id response)) callback;

#pragma mark - Method that makes the actual request
- (void) request:(NSString *) url withData:(NSDictionary *) data callback:(void (^)(id response)) callback method:(NSString *)method;

@end

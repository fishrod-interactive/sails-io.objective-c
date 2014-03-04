//
//  SocketIO+SailsIO.m
//  Socket.IO
//
//  Created by Gavin Williams on 04/03/2014.
//  Copyright (c) 2014 Fishrod Interactive. All rights reserved.
//

#import "SocketIO+SailsIO.h"
#import "NSString+TrimmingAdditions.h"

@implementation SocketIO (SailsIO)

#pragma mark - Request convenience methods
- (void) get:(NSString *)url withData:(NSDictionary *)data callback:(void (^)(id response))callback {
    [self request:url withData:data callback:callback method:@"get"];
}

- (void) post:(NSString *)url withData:(NSDictionary *)data callback:(void (^)(id response))callback {
    [self request:url withData:data callback:callback method:@"post"];
}

- (void) put:(NSString *)url withData:(NSDictionary *)data callback:(void (^)(id response))callback {
    [self request:url withData:data callback:callback method:@"put"];
}

- (void) delete:(NSString *)url withData:(NSDictionary *)data callback:(void (^)(id response))callback {
    [self request:url withData:data callback:callback method:@"delete"];
}

#pragma mark - Method that makes the actual request
- (void) request:(NSString *)url withData:(NSDictionary *)data callback:(void (^)(id response))callback method:(NSString *)method {
    
    // Trim any white spaces and / slashes from the end of the URL
    NSMutableCharacterSet *urlReplacementSet = [NSMutableCharacterSet whitespaceAndNewlineCharacterSet];
    [urlReplacementSet addCharactersInString:@"/"];
    
    url = [url stringByTrimmingTrailingCharactersInSet:urlReplacementSet];
    
    // Make sure the method is actually set
    method = (method) ? method : @"get";
    
    NSDictionary *request = @{@"url": url, @"data": (data) ? data : [NSNull null]};
    
    NSData *jsonData = [NSJSONSerialization dataWithJSONObject:request options:0 error:nil];
    NSString *json;
    if(jsonData){
        json = [[NSString alloc] initWithData:jsonData encoding:NSUTF8StringEncoding];
    }
    
    if(json){
        
        [self sendEvent:method withData:json andAcknowledge:^(id argsData) {
            
            NSData *json = [argsData dataUsingEncoding:NSUTF8StringEncoding];
            NSError *error;
            
            id data = [NSJSONSerialization JSONObjectWithData:json options:0 error:&error];
            
            callback(data);
            
        }];
        
    }
    
}

@end

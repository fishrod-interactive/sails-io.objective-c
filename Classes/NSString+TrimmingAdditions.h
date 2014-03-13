//
//  NSString+TrimmingAdditions.h
//  Socket.IO
//
//  Created by Gavin Williams on 04/03/2014.
//  Copyright (c) 2014 Fishrod Interactive. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (TrimmingAdditions)

- (NSString *)stringByTrimmingLeadingCharactersInSet:(NSCharacterSet *)characterSet;
- (NSString *)stringByTrimmingLeadingWhitespaceAndNewlineCharacters;
- (NSString *)stringByTrimmingTrailingCharactersInSet:(NSCharacterSet *)characterSet;
- (NSString *)stringByTrimmingTrailingWhitespaceAndNewlineCharacters;

@end

//
//  NSString+NSString_WordUtils.m
//  Objective-C
//
//  Created by Pavel Parkhomey on 4/17/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

#import "NSString+NSString_WordUtils.h"

@implementation NSString (NSString_WordUtils)

+(NSString *)reversed: (NSString *)string{
    NSMutableString *reversedString = [NSMutableString string];
    NSInteger charIndex = [string length];
    while (charIndex > 0) {
        charIndex--;
        NSRange subStringRange = NSMakeRange(charIndex, 1);
        [reversedString appendString:[string substringWithRange:subStringRange]];
    }
    NSLog(@"%@", reversedString);
    return reversedString;
}

-(NSArray *)givesBackWords {
    NSMutableArray * list = [[NSMutableArray alloc] init];
    return list;
}


@end

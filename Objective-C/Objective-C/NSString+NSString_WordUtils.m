//
//  NSString+NSString_WordUtils.m
//  Objective-C
//
//  Created by Pavel Parkhomey on 4/17/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

#import "NSString+NSString_WordUtils.h"

@implementation NSString (NSString_WordUtils)

//Reversing a String
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
    NSError *error;
    @try {
        NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern: @"[:alpha:] +" options:NSRegularExpressionCaseInsensitive error: &error];
    } @catch (NSException *exception) {
      //NSRegularExpression *regex = [NSOrderedSame NSRangeException];
    }
    
    return list;
}

//-(NSArray *)givesBackWords{
//    return [self componentsSeparatedByString: @""];
//}

//func scan(_ regex: String) -> [String] {
//    do {
//        let regex = try NSRegularExpression(pattern: regex)
//        let results = regex.matches(in: self, range: NSRange(location: 0, length: nsString.length))
//    } catch let error {
//        print("Invalid regular expression: \(error.localizedDescription)")
//        return []
//    }
//}


@end

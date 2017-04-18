//
//  ViewController.m
//  Objective-C
//
//  Created by Pavel Parkhomey on 4/17/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

#import "ViewController.h"
#import "NSString+NSString_WordUtils.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableString *mutableString = [[NSMutableString alloc] initWithString:@"string"];
    [NSMutableString reversed: mutableString];
}

//-NSString *givesBackwords = @"String";
@end

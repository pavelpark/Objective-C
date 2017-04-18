//
//  ViewController.m
//  Objective-C
//
//  Created by Pavel Parkhomey on 4/17/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

#import "ViewController.h"
#import "NSString+NSString_WordUtils.h"
#import "Employee.h"
@interface ViewController ()

@end

@implementation ViewController



- (void)viewDidLoad {
    
    [super viewDidLoad];
    NSMutableString *mutableString = [[NSMutableString alloc] initWithString:@"string"];
    [NSMutableString reversed: mutableString];
    
    Employee *original = [[Employee alloc]initWithFirstName:@"pavel" lastName:@"parkhomey" age:@19 yearsEmployed:@2 andManager:@"Brook" email:@"pavelpark@aol.com"];
    
    Employee *newInstructor = [original copy];
    
    newInstructor.firstName = @"Mike";
    
    NSLog(original.firstName);
}


//-NSString *givesBackwords = @"String";
@end

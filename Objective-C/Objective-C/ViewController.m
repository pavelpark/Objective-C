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
#import "EmpolyeeDataBase.h"
@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    NSMutableString *mutableString = [[NSMutableString alloc] initWithString:@"string"];
    [NSMutableString reversed: mutableString];
    
    Employee *original = [[Employee alloc]initWithFirstName:@"pavel" lastName:@"parkhomey" age:@19 email:@"pavelpark@aol.com" yearsEmployed:@2 andManager:@"Brook"];
    
    Employee *newInstructor = [original copy];
    
    newInstructor.firstName = @"Mike";
    
    [[EmpolyeeDataBase shared] add: original];
    [[EmpolyeeDataBase shared] add: newInstructor];
    
}


//-NSString *givesBackwords = @"String";
@end

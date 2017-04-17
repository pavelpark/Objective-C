//
//  Employee.m
//  Objective-C
//
//  Created by Pavel Parkhomey on 4/17/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

#import "Employee.h"

@implementation Employee

//Private Stuff "_"
int _employeeNumber;
int _yearsEmployed;
NSString *_managerName;

//Getters
-(int)employeeNumber {
    return _employeeNumber;
}
-(int)yearsEmployed {
    return _yearsEmployed;
}
-(NSString *)managerName {
    return _managerName;
}

//Setters
//Make Sure method name beggins with set.
//Make sure argument starts with "the, a, an" article.
-(void)setEmployeeNumber: (int) theEmployeeNumber{
    _employeeNumber = theEmployeeNumber;
}
-(void)setYearsEmployed:(int) theYearsEmployed{
    _yearsEmployed = theYearsEmployed;
}
-(void)setManagerName:(NSString *) theManagerName{
    _managerName = theManagerName;
}
@end

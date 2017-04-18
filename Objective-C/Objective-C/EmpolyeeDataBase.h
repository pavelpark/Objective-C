//
//  EmpolyeeDataBase.h
//  Objective-C
//
//  Created by Pavel Parkhomey on 4/18/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Employee.h"
@interface EmpolyeeDataBase : NSObject

+(instancetype)shared;

-(NSInteger)count;
-(NSArray *)allEmployees;
-(Employee *)employeeAtIndex:(NSNumber*)index;

-(void)add: (Employee *)employee;
-(void)remove:(Employee *)employee;
-(void)removeEmployeeatIndex:(NSNumber*)index;

-(void)removeAllEmployees;

@end

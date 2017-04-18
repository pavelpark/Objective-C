//
//  Employee.h
//  Objective-C
//
//  Created by Pavel Parkhomey on 4/17/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

#import "Person.h"

@interface Employee : Person <NSCopying>

//Getter
-(int)employeeNumber;
-(int)yearsEmployed;
-(NSString *)managerName;

//Setter
-(void)setEmployeeNumber: (int) theEmployeeNumber;
-(void)setYearsEmployed:(int) theYearsEmployed;
-(void)setManagerName: (NSString *) theManagerName;

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                   yearsEmployed:(NSNumber *)yearsEmployed
                      andManager:(NSString *)managerName;
@end

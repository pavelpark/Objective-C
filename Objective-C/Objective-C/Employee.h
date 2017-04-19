//
//  Employee.h
//  Objective-C
//
//  Created by Pavel Parkhomey on 4/17/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

#import "Person.h"

@interface Employee : Person <NSCopying>
//Getter and the Setter
@property (strong,nonatomic) NSNumber *yearsEmployed;
@property (strong,nonatomic) NSNumber *employeeNumber;
@property (strong,nonatomic) NSString *managerName;
@property (strong,nonatomic) NSString *email;


-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                           email:(NSString *)email
                   yearsEmployed:(NSNumber *)yearsEmployed
                      andManager:(NSString *)managerName;
@end

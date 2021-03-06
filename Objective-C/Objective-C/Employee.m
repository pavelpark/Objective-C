//
//  Employee.m
//  Objective-C
//
//  Created by Pavel Parkhomey on 4/17/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

#import "Employee.h"

@implementation Employee

-(instancetype)initWithFirstName:(NSString *)firstName
                        lastName:(NSString *)lastName
                             age:(NSNumber *)age
                           email:(NSString *)email
                   yearsEmployed:(NSNumber *)yearsEmployed
                      andManager:(NSString *)managerName{
    
    self = [super initWithFirstName:firstName lastName:lastName andAge:age ];
    
    if (self) {
        _yearsEmployed = [yearsEmployed retain];
        _managerName = [managerName retain];
        _email = [email retain];
        _employeeNumber = [NSNumber numberWithInt:arc4random_uniform(1000)];
        //Use arc for rancdom to get a random number from the number you set it too like we did above "1000".
    }
    return self;
}

-(void)setemail:(NSString *)email{
    
    if(_email != email){
        
        [email retain];
        [_email release];
        
        _email = email;
    }
}
-(NSString *)email{
    return _email;
}
-(void)setyearsEmployed:(NSNumber *)yearsEmployed{
    
    if(_yearsEmployed != yearsEmployed){
        
        [yearsEmployed retain];
        [_yearsEmployed release];
        
        _yearsEmployed = yearsEmployed;
    }
}
-(NSNumber *)yearsEmployed{
    return _yearsEmployed;
}
-(void)setManagerName:(NSString *)managerName{
    
    if(_managerName != managerName){
        
        [managerName retain];
        [_managerName release];
    }
}
-(NSString *)managerName{
    return _managerName;
}

-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    
    self = [super init];
    
    if (self) {
        
        self.firstName = [aDecoder decodeObjectForKey:@"firstName"];
        self.lastName = [aDecoder decodeObjectForKey:@"lastName"];
        self.age = [aDecoder decodeObjectForKey:@"age"];
        self.email = [aDecoder decodeObjectForKey:@"email"];

        
        self.yearsEmployed = [aDecoder decodeObjectForKey:@"yearsEmployed"];
        self.managerName = [aDecoder decodeObjectForKey:@"managerName"];
        self.employeeNumber = [aDecoder decodeObjectForKey:@"employeeNumber"];
    }
    return self;
}

-(void)encodeWithCoder:(NSCoder *)aCoder{
    [aCoder encodeObject:self.firstName forKey:@"firstName"];
    [aCoder encodeObject:self.lastName forKey:@"lastName"];
    [aCoder encodeObject:self.age forKey:@"age"];
    [aCoder encodeObject:self.email forKey:@"email"];
    [aCoder encodeObject:self.yearsEmployed forKey:@"yearsEmployed"];
    [aCoder encodeObject:self.managerName forKey:@"managerName"];
    [aCoder encodeObject:self.employeeNumber forKey:@"employeeNumber"];
}

-(id)copyWithZone:(NSZone *)zone {
    
    Employee *employee = [super copyWithZone:zone];
    
    employee.employeeNumber = self.employeeNumber;
    employee.managerName = self.managerName;
    employee.yearsEmployed = self.yearsEmployed;
    
    return employee;
}

//Private Stuff "_"
int _employeeNumber;
int _yearsEmployed;
NSString *_managerName;

//Version 2.0 of Objective-C
//Getters
//-(int)employeeNumber {
//    return _employeeNumber;
//}
//-(NSNumber *)yearsEmployed {
//    return _yearsEmployed;
//}
//-(NSString *)managerName {
//    return _managerName;
//}

//Setters
//Make Sure method name beggins with set.
//Make sure argument starts with "the, a, an" article.
//-(void)setEmployeeNumber: (int) theEmployeeNumber{
//    _employeeNumber = theEmployeeNumber;
//}
//-(void)setYearsEmployed:(int) theYearsEmployed{
//    _yearsEmployed = theYearsEmployed;
//}
//-(void)setManagerName:(NSString *) theManagerName{
//    _managerName = theManagerName;
//}
@end

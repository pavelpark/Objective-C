//
//  EmpolyeeDataBase.m
//  Objective-C
//
//  Created by Pavel Parkhomey on 4/18/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

#import "EmpolyeeDataBase.h"

@interface EmpolyeeDataBase ()

@property(strong, nonatomic) NSMutableArray *employees;


@end

@implementation EmpolyeeDataBase


-(void)add: (Employee *)employee{
    [self.employees addObject:employee];
}

-(void)remove:(Employee *)employee{
    [self.employees removeObject:employee];
}
-(void)removeEmployeeatIndex:(int)index{
    [self.employees removeObjectAtIndex:index];
}

-(void)removeAllEmployees{
    [self.employees removeAllObjects];
}
-(NSInteger)count{
    return self.employees.count;
}
-(NSArray *)allEmployees{
    return self.employees;
}
-(Employee *)employeeAtIndex:(int)index{
    return [self.employees objectAtIndex:index];
}

+(instancetype)shared {
    
    static EmpolyeeDataBase *shared = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[EmpolyeeDataBase alloc]init];
    });
    return shared;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.employees = [[NSMutableArray alloc]init];
    }
    return self;
}

//MARK: Helper Methods

-(NSURL *)documentsDirectory{
    
    NSURL *documentsDictionaryURL = [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] firstObject];
    
    return documentsDictionaryURL;
}

-(NSURL *)archiveURL {
    return [[self documentsDirectory] URLByAppendingPathComponent:@"archive"];
    
}


@end

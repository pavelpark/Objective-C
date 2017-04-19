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
    [self save];
}

-(void)remove:(Employee *)employee{
    [self.employees removeObject:employee];
    [self save];
}
-(void)removeEmployeeatIndex:(int)index{
    [self.employees removeObjectAtIndex:index];
    [self save];
}

-(void)removeAllEmployees{
    [self.employees removeAllObjects];
    [self save];
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

- (instancetype)init {
    self = [super init];
    if (self) {
        
        _employees = [NSKeyedUnarchiver unarchiveObjectWithData:[NSData dataWithContentsOfURL:self.archiveURL]];
        
        if (!_employees) {
            
            _employees = [[NSMutableArray alloc]init];
        }
    }
    return self;
}

-(void)save{
    
    BOOL success = [NSKeyedArchiver archiveRootObject:self.employees toFile:self.archiveURL.path];
    
    if (success) {
        NSLog(@"saved employyes");
    }else {
        NSLog(@"save failed!");
    }
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

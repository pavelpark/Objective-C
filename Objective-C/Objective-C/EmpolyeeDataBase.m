//
//  EmpolyeeDataBase.m
//  Objective-C
//
//  Created by Pavel Parkhomey on 4/18/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

#import "EmpolyeeDataBase.h"

@interface EmpolyeeDataBase ()

@property(strong, nonatomic) NSArray *employees;

@end

@implementation EmpolyeeDataBase

+(instancetype)shared {
    
    static EmpolyeeDataBase *shared = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[[self class] alloc]init];
    });
    return shared;
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

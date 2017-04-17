//
//  PersonQueue.h
//  Objective-C
//
//  Created by Pavel Parkhomey on 4/17/17.
//  Copyright © 2017 Pavel Parkhomey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

@protocol PersonQueue <NSObject>

@required
-(void)enqueue: (Person *) person;
-(Person *)dequeue;
@optional
-(int)count;
    

@end

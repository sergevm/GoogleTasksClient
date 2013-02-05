//
//  GoogleTasksService.h
//  GoogleTasksPrototype
//
//  Created by Serge Van Meerbeeck on 12/08/12.
//  Copyright (c) 2012 Software-Projects bvba. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GTLServiceTasks.h"

@interface GoogleTasksService : NSObject
@property (strong, readonly, nonatomic) GTLServiceTasks *googleService;
+ (GoogleTasksService*) sharedService;
@end

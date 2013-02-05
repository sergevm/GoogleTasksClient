//
//  GoogleTasksService.h
//  GoogleTasksClient
//
//  Created by Serge Van Meerbeeck on 21/01/2013.
//  Copyright (c) 2013 Software-Projects bvba. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GTLServiceTasks.h"

@interface GoogleTasksService : NSObject
@property (strong, readonly, nonatomic) GTLServiceTasks *tasksService;
+ (GoogleTasksService*) instance;
@end

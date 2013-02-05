//
//  TaskListRepository.m
//  GoogleTasksPrototype
//
//  Created by Serge Van Meerbeeck on 14/08/12.
//  Copyright (c) 2012 Software-Projects bvba. All rights reserved.
//

#import "GoogleTasksRepository.h"

#import "GTLQueryTasks.h"

#import "GoogleTasksService.h"

@implementation GoogleTasksRepository

+ (void) getTaskLists: (id<SPTaskListDataConsumer>) consumer
{
    GTLQueryTasks* queryForTaskLists = [GTLQueryTasks queryForTasklistsList];
    GTLServiceTasks *service = [[GoogleTasksService sharedService] googleService];
    
    [service executeQuery:queryForTaskLists completionHandler:^(GTLServiceTicket *ticket, id taskLists, NSError *error) {
        [consumer didGetTasksLists: taskLists error: error];
    }];
}

+ (void) updateTaskList:(GTLTasksTaskList *)taskList forConsumer:(id<SPTaskListDataConsumer>)consumer
{
    GTLQueryTasks *updateQuery = [GTLQueryTasks queryForTasklistsPatchWithObject:taskList tasklist:[taskList identifier]];
    GTLServiceTasks * service = [[GoogleTasksService sharedService] googleService];
    
    [service executeQuery:updateQuery completionHandler:^(GTLServiceTicket *ticket, id object, NSError *error) {
        [consumer didUpdateTaskList:object error:error];
    }];
}

@end

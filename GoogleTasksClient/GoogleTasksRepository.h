//
//  TaskListRepository.h
//  GoogleTasksPrototype
//
//  Created by Serge Van Meerbeeck on 21/01/13.
//  Copyright (c) 2013 Software-Projects bvba. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "GTLTasksTaskLists.h"

#import "GTLTasksTaskList.h"

@protocol SPTaskListDataConsumer <NSObject>
- (void) didGetTasksLists: (GTLTasksTaskLists *) taskLists error: (NSError *) error;
@optional
- (void) didCreateTaskList: (GTLTasksTaskList *) newTaskList error: (NSError *) error;
- (void) didUpdateTaskList: (GTLTasksTaskList *) taskList error: (NSError *) error;
- (void) didDeleteTaskList: (GTLTasksTaskList *) taskList error: (NSError *) error;

@end

@protocol SPTaskListDataSource <NSObject>

+ (void) getTaskLists: (id<SPTaskListDataConsumer>) consumer;
@optional
+ (GTLTasksTaskList *) createTaskList: (GTLTasksTaskList *) newTaskList forConsumer: (id<SPTaskListDataConsumer>) consumer;
+ (void) updateTaskList : (GTLTasksTaskList *) taskList forConsumer: (id<SPTaskListDataConsumer>) consumer;
+ (void) deleteTaskList: (GTLTasksTaskList *) taskList forConsumer: (id<SPTaskListDataConsumer>) consumer;

@end

@interface GoogleTasksRepository : NSObject<SPTaskListDataSource>
@end

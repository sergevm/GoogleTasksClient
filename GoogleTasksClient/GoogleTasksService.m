//
//  GoogleTasksService.m
//  GoogleTasksClient
//
//  Created by Serge Van Meerbeeck on 02/02/13.
//  Copyright (c) 2013 Software-Projects bvba. All rights reserved.
//

#import "GoogleTasksService.h"
#import "GTLServiceTasks.h"
#import "GTMOAuth2Authentication.h"
#import "GTMOAuth2ViewControllerTouch.h"
#import "GoogleTasksClientAppDelegate.h"

@interface GoogleTasksService()
 - (id) initWithTasksService: (GTLServiceTasks *) tasksService;
@end

@implementation GoogleTasksService

@synthesize tasksService = _tasksService;

+ (GoogleTasksService *) instance
{
    static GoogleTasksService *instance = nil;

    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
    
        GTLServiceTasks *service = [[GTLServiceTasks alloc] init];
        
        service.shouldFetchNextPages = YES;
        service.retryEnabled = YES;
        
        GoogleTasksClientAppDelegate *appDelegate = (GoogleTasksClientAppDelegate *)[[UIApplication sharedApplication] delegate];
        service.authorizer = appDelegate.authenticationTicket;
        instance = [[self alloc] initWithTasksService:service];
    });
    
    return instance;
}

- (id) initWithTasksService:(GTLServiceTasks *)service
{
    if (self = [super init])
    {
        self->_tasksService = service;
    }
    
    return self;
}

@end

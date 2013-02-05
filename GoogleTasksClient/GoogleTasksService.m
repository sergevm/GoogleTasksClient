//
//  GoogleTasksService.m
//  GoogleTasksPrototype
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
- (id) initWithService: (GTLServiceTasks *) service;
@end

@implementation GoogleTasksService

@synthesize googleService = _googleService;

+ (GoogleTasksService *) sharedService
{
    static GoogleTasksService *theSharedService = nil;

    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
    
        GTLServiceTasks *service = [[GTLServiceTasks alloc] init];
        
        service.shouldFetchNextPages = YES;
        service.retryEnabled = YES;
        
        GoogleTasksClientAppDelegate * appDelegate = (GoogleTasksClientAppDelegate *)[UIApplication sharedApplication];
        service.authorizer = appDelegate.authenticationTicket;
        theSharedService = [[self alloc] initWithService:service];
    });
    
    return theSharedService;
}

- (id) initWithService:(GTLServiceTasks *)service
{
    if (self = [super init])
    {
        self->_googleService = service;
    }
    
    return self;
}

@end

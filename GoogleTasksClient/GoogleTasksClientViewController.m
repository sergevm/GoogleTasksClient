//
//  GoogleTasksClientViewController.m
//  GoogleTasksClient
//
//  Created by Serge Van Meerbeeck on 26/01/13.
//  Copyright (c) 2013 Serge Van Meerbeeck. All rights reserved.
//

#import "GoogleTasksClientViewController.h"
#import "GoogleTasksClientAppDelegate.h"
#import "GTLQueryTasks.h"
#import "GoogleTasksService.h"
#import "GoogleTasksRepository.h"

@interface GoogleTasksClientViewController ()

@end

@implementation GoogleTasksClientViewController

@synthesize logoutButton;

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.toolbarItems = [[NSArray alloc] initWithObjects:logoutButton, nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)logout:(id)sender{
	GoogleTasksClientAppDelegate *appDelegate = (GoogleTasksClientAppDelegate *)[[UIApplication sharedApplication] delegate];
	[appDelegate logOut];
	[appDelegate authenticateToGoogle];
}

+ (void) getTaskLists: (id<SPTaskListDataConsumer>) consumer
{
	
    GTLQueryTasks* queryForTaskLists = [GTLQueryTasks queryForTasklistsList];
    GTLServiceTasks *service = [[GoogleTasksService sharedService] googleService];

    [service executeQuery:queryForTaskLists completionHandler:^(GTLServiceTicket *ticket, id taskLists, NSError *error) {
        [consumer didGetTasksLists: taskLists error: error];
    }];
}
@end

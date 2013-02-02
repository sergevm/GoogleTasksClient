//
//  GoogleTasksClientViewController.m
//  GoogleTasksClient
//
//  Created by Serge Van Meerbeeck on 26/01/13.
//  Copyright (c) 2013 Serge Van Meerbeeck. All rights reserved.
//

#import "GoogleTasksClientViewController.h"
#import "GoogleTasksClientAppDelegate.h"

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

@end

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
@property(strong)   GTLTasksTaskLists* taskLists;
@end

@implementation GoogleTasksClientViewController

@synthesize logoutButton;
@synthesize taskLists = _taskLists;

- (void)viewDidLoad
{
    [super viewDidLoad];
	self.toolbarItems = [[NSArray alloc] initWithObjects:logoutButton, nil];
	[self loadTaskLists];
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

- (void)loadTaskLists
{
    [GoogleTasksRepository getTaskLists: self];
}

- (void) didGetTasksLists: (GTLTasksTaskLists *) taskLists error: (NSError *) error
{
    if (error)
    {
        NSLog(@"Error occurred while fetching task lists: %@", [error description]);
    }
    else
    {
        self.taskLists = taskLists;
        [[self tableView] reloadData];
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return (self.taskLists ? 1 : 0);
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.taskLists.items.count;
}

// Customize the appearance of table view cells.
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellIdentifier];
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    }
    
    // Configure the cell.
    cell.textLabel.text = [[self.taskLists.items objectAtIndex:indexPath.row] title];
    return cell;
}


@end

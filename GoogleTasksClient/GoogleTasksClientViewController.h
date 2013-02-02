//
//  GoogleTasksClientViewController.h
//  GoogleTasksClient
//
//  Created by Serge Van Meerbeeck on 26/01/13.
//  Copyright (c) 2013 Serge Van Meerbeeck. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GoogleTasksClientViewController : UITableViewController
@property IBOutlet UIBarButtonItem *logoutButton;
- (IBAction)logout: (id)sender;
@end

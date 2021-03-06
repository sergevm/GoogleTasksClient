//
//  GoogleTasksClientAppDelegate.h
//  GoogleTasksClient
//
//  Created by Serge Van Meerbeeck on 26/01/13.
//  Copyright (c) 2013 Serge Van Meerbeeck. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GTMOAuth2Authentication.h"

@interface GoogleTasksClientAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) UINavigationController *navigationController;
@property (strong, nonatomic) GTMOAuth2Authentication *authenticationTicket;

- (void) authenticateToGoogle;
- (void) logOut;

@end

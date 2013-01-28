//
//  GoogleTasksClientAppDelegate.m
//  GoogleTasksClient
//
//  Created by Serge Van Meerbeeck on 26/01/13.
//  Copyright (c) 2013 Serge Van Meerbeeck. All rights reserved.
//

#import "GoogleTasksClientAppDelegate.h"
#import "GTMOAuth2Authentication.h"
#import "GTMOAuth2ViewControllerTouch.h"

@implementation GoogleTasksClientAppDelegate

@synthesize navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    // Override point for customization after application launch.
	
	navigationController = (UINavigationController *)self.window.rootViewController;
	[self authenticateToGoogle];
	
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
	// Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
	// Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
	// Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
	// If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
	// Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
	// Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
	// Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)authenticateToGoogle
{
	NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
	NSString *clientId = [defaults objectForKey:@"client_id"];
	NSString *clientSecret = [defaults objectForKey:@"client_secret"];
    GTMOAuth2Authentication *auth = nil;
    
    auth = [GTMOAuth2ViewControllerTouch authForGoogleFromKeychainForName:@"GoogleTasksClient: Tasks"
                                                                 clientID:clientId
                                                             clientSecret:clientSecret];
    
    if (!auth.canAuthorize)
    {
        GTMOAuth2ViewControllerTouch *viewController;
        viewController = [[GTMOAuth2ViewControllerTouch alloc] initWithScope:@"https://www.googleapis.com/auth/tasks"
						  clientID:clientId clientSecret:clientSecret keychainItemName:@"GoogleTasksClient: Tasks"
						  delegate:self finishedSelector:@selector(viewController:finishedWithAuth:error:)];
        
		[self.window setRootViewController:viewController];
    }
    else
    {
		[self.window setRootViewController: navigationController];
    }
}

- (void)viewController:(GTMOAuth2ViewControllerTouch *)viewController
      finishedWithAuth:(GTMOAuth2Authentication *)auth
                 error:(NSError *)error {
    if (error != nil) {
        NSLog(@"Authentication error: %@", error);
        NSData *responseData = [[error userInfo] objectForKey:@"data"];
        if ([responseData length] > 0) {
            NSString *str = [[NSString alloc] initWithData:responseData encoding:NSUTF8StringEncoding];
            NSLog(@"%@", str);
        }
    } else {
		[self.window setRootViewController: navigationController];
    }
}

@end
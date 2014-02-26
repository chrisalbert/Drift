//
//  DRAppDelegate.m
//  Drift
//
//  Created by Christoph Albert on 2/17/14.
//  Copyright (c) 2014 Christoph Albert. All rights reserved.
//

#import "DRAppDelegate.h"
#import "DRVisualFeedbackViewController.h"

@import CoreLocation;

@implementation DRAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
//    [MagicalRecord setupAutoMigratingCoreDataStack];


//    CLLocation *loc1 = [[CLLocation alloc] initWithLatitude:59.3294 longitude:18.0686]; //Sthlm
//    CLLocation *loc2 = [[CLLocation alloc] initWithLatitude:52.5167 longitude:13.3833]; //Berlin 228
//    CLLocation *loc3 = [[CLLocation alloc] initWithLatitude:53.5653 longitude:10.0014]; //Hamburg 6
//    CLLocation *p = [[CLLocation alloc] initWithLatitude:55.60583 longitude:13.03583]; //Malmö
//
//    DLog(@"Distance Berlin: %f",[p dr_perpendicularDistanceWithLocation:loc1 location:loc2]);
//    DLog(@"Distance Hamburg: %f",[p dr_perpendicularDistanceWithLocation:loc1 location:loc3]);



    CLLocation *apple1 = [[CLLocation alloc] initWithLatitude:37.3317 longitude:-122.031844];
    CLLocation *apple2 = [[CLLocation alloc] initWithLatitude:37.3290661 longitude:-122.0185939];

    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    self.window.backgroundColor = [UIColor blackColor];

    DRVisualFeedbackViewController *visual = [[DRVisualFeedbackViewController alloc] initWithPath:@[apple1,apple2]];

    self.window.rootViewController = visual;

    [self.window makeKeyAndVisible];
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

#pragma mark - Application's Documents directory

// Returns the URL to the application's Documents directory.
- (NSURL *)applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}

@end

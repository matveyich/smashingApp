//
//  AppDelegate.m
//  smashingApp
//
//  Created by ilya matvienko on 6/13/15.
//  Copyright (c) 2015 mike gibbelson. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    
    [DevMateKit sendTrackingReport:nil delegate:nil];
    [DevMateKit setupIssuesController:nil reportingUnhandledIssues:YES];
}

- (IBAction)showFeedbackDialog:(id)sender {
    [DevMateKit showFeedbackDialog:nil inMode:DMFeedbackDefaultMode];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

- (IBAction)crashApplication:(id)sender {
    [NSException raise:@"Invalid foo value" format:@"foo of %d is invalid", 100];
}

@end
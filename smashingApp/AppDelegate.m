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
    Paddle *paddle = [Paddle sharedInstance];
    [paddle setProductId:@"499634"];
    [paddle setVendorId:@"9906"];
    [paddle setApiKey:@"15f485c0cd7d576d71593cb5f296c17c"];
    
    [DevMateKit sendTrackingReport:nil delegate:nil];
    [DevMateKit setupIssuesController:nil reportingUnhandledIssues:YES];
}

- (IBAction)showFeedbackDialog:(id)sender {
    [DevMateKit showFeedbackDialog:nil inMode:DMFeedbackDefaultMode];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}

@end
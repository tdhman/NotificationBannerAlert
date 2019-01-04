//
//  HMViewController.m
//  NotificationBannerAlert
//
//  Created by tdhman on 01/04/2019.
//  Copyright (c) 2019 tdhman. All rights reserved.
//

#import "HMViewController.h"
#import "MPC_Notification.h"

@interface HMViewController ()<MPC_NotificationDelegate>

@end

@implementation HMViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)defaultBtn:(id)sender {
    //1. Create the notification
//    MPC_Notification *imageAlert = [[MPC_Notification alloc]initWithTitle:@"Alert with an image"
//                                                                  message:@"Sample message \nAnother message"
//                                                               alertColor:nil
//                                                               alertImage:[UIImage imageNamed:@"alertExclamation"]
//                                                              displayTime:2.0];
    
    MPC_Notification *alert = [[MPC_Notification alloc] initDefaultAlertWithTitle:@"Default Alert" message:@"Sample message text" displayTime:2.0];
    alert.delegate = self;
    if (alert) {
        [alert display];
    }
}

- (IBAction)successBtn:(id)sender {
    MPC_Notification *alert = [[MPC_Notification alloc] initSuccessAlertWithTitle:@"Success Alert" message:@"Sample message text" displayTime:2.0];
    alert.delegate = self;
    if (alert) {
        [alert display];
    }
}

- (IBAction)warningBtn:(id)sender {
    MPC_Notification *alert = [[MPC_Notification alloc] initWarningAlertWithTitle:@"Warning Alert" message:@"Sample message text" displayTime:2.0];
    alert.delegate = self;
    if (alert) {
        [alert display];
    }
}

- (IBAction)dangerBtn:(id)sender {
    MPC_Notification *alert = [[MPC_Notification alloc] initDangerAlertWithTitle:@"Danger Alert" message:@"Sample message text" displayTime:2.0];
    alert.delegate = self;
    if (alert) {
        [alert display];
    }
}

#pragma mark - MPC_NotificationDelegate
- (void)userDidTapMPC_NotificationView:(MPC_Notification *)MPC_Notification {
    NSLog(@"%s called", __FUNCTION__);
    //This would be the place to push or present another view if necessary.
}

- (void)alertViewDidDismiss:(MPC_Notification *)MPC_Notification {
    NSLog(@"%s called", __FUNCTION__);
}

@end

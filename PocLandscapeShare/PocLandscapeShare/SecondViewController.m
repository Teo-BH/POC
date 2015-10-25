//
//  SecondViewController.m
//  PocLandscapeShare
//
//  Created by Teobaldo Mauro de Moura on 10/25/15.
//  Copyright © 2015 Teobaldo Mauro de Moura. All rights reserved.
//

#import "SecondViewController.h"
#import "AppDelegate.h"

@implementation SecondViewController

-(UIInterfaceOrientation)preferredInterfaceOrientationForPresentation {
    return UIInterfaceOrientationLandscapeRight;
}

-(BOOL)shouldAutorotate {
    return NO;
}

- (IBAction)backTouched:(UIButton *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (IBAction)shareTouched:(UIButton *)sender {
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.forceOrientationMak = UIInterfaceOrientationMaskLandscapeRight;

    NSArray *items = @[ @"Texto compartilhado = 2˚ !" ];
    UIActivityViewController *share = [[UIActivityViewController alloc] initWithActivityItems:items applicationActivities:nil];
    
    [share setCompletionWithItemsHandler:
     ^(NSString *activityType, BOOL completed, NSArray *returnedItems, NSError *activityError) {
         appDelegate.forceOrientationMak = 0;
     }];
    
    [self presentViewController:share animated:YES completion:nil];
}

@end

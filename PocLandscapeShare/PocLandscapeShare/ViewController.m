//
//  ViewController.m
//  PocLandscapeShare
//
//  Created by Teobaldo Mauro de Moura on 10/25/15.
//  Copyright © 2015 Teobaldo Mauro de Moura. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)shareTouched:(UIButton *)sender {
    NSArray *items = @[ @"Texto compartilhado !" ];
    
    UIActivityViewController *share = [[UIActivityViewController alloc] initWithActivityItems:items applicationActivities:nil];
    
     [self presentViewController:share animated:YES completion:nil];
}

- (IBAction)openTouched:(UIButton *)sender {
    
    UIViewController *view = [[self storyboard] instantiateViewControllerWithIdentifier:@"SecondViewController"];
    
    [self presentViewController:view animated:YES completion:nil];
}

@end

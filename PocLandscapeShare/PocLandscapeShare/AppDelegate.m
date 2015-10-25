//
//  AppDelegate.m
//  PocLandscapeShare
//
//  Created by Teobaldo Mauro de Moura on 10/25/15.
//  Copyright © 2015 Teobaldo Mauro de Moura. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOption {
    
    self.forceOrientationMak = 0;
    return YES;
}

-(UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(UIWindow *)window {
    if(self.forceOrientationMak == 0)
        return UIInterfaceOrientationMaskPortrait;
    else
        return self.forceOrientationMak;
}

@end

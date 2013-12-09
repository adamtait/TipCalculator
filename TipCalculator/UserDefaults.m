//
//  UserDefaults.m
//  TipCalculator
//
//  Created by Adam Tait on 12/8/13.
//  Copyright (c) 2013 Adam Tait. All rights reserved.
//

#import "UserDefaults.h"

@implementation UserDefaults

+ (int)getTipControlDefault {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    return [defaults integerForKey:@"noco.TipVIewController.tipControl.index.default"];
}

+ (void)setTipControlDefault:(int)value {
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setInteger:value forKey:@"noco.TipVIewController.tipControl.index.default"];
    [defaults synchronize];
}

@end

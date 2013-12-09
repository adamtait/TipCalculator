//
//  UserDefaults.h
//  TipCalculator
//
//  Created by Adam Tait on 12/8/13.
//  Copyright (c) 2013 Adam Tait. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface UserDefaults : NSObject

+ (int)getTipControlDefault;
+ (void)setTipControlDefault:(int)value;

@end

//
//  AppDelegate.m
//  NumberProblems-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [self iterateCount:2];
    // Insert code here...
    
    return YES;
}

static int multiple = 8;
static int divisor = 6;

- (void)iterateCount:(int)num;
{
    int resOfMult = [self multiplied:num];
    float resOfDiv = [self divided:resOfMult];
    
    if(num == 0){
        NSLog(@"Iterate %d", num);
    } else {
        NSLog(@"Iterate %d", num);
        NSLog(@"Multiplied %d by %d to be %d", num, multiple, resOfMult);
            /* num = [integer], multiple = [muliplie], resOfMult = [multiplied]*/
        NSLog(@"Divided %d by %d to be %f", resOfMult, divisor, resOfDiv);
            /* resOfMult = [multiplied], divisor = [divisor], resOfDiv = [divided]*/
        --num;
        [self iterateCount:num];
    }
}


- (int)multiplied:(int)num0;
{
    int res = num0 *= multiple;
    return res;
}

- (float)divided: (int)arg;
{
    return (float)arg / (float)divisor;
}


@end

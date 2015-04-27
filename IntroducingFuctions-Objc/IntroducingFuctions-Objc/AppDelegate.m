//
//  AppDelegate.m
//  IntroducingFuctions-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    // Insert code here...
    NSString *myName = @"Brad";
    
    countDownTilIntroduction(4);
    printIntroductions(myName);
    NSString *introduction;
    NSString *japaneseIntroduction;
    
    introduction = [NSString stringWithFormat:@"My name is %@", myName];
    japaneseIntroduction = [@"moushimasu" stringByAppendingString: (@"%@", myName)];
   
    NSLog(@"%@ %@", introduction, japaneseIntroduction);
    
    
    return YES;
}

// Define new functions h
void printIntroductions(NSString *name){
    NSString *introduction;
    NSString *japaneseIntroduction;
    
    introduction = [NSString stringWithFormat:@"My name is %@", name];
    japaneseIntroduction = [@"moushimasu" stringByAppendingString: (@"%@", name)];
    
    NSLog(@"%@ \n %@", introduction, japaneseIntroduction);
}

void countDownTilIntroduction(int numberOfDays){
    if(numberOfDays == 0) {
        NSLog(@"The time has come");
    }else{
        NSLog(@"%d days till introductions", numberOfDays);
        int oneLessDay = numberOfDays - 1;
        countDownTilIntroduction(oneLessDay);
    }
}

@end

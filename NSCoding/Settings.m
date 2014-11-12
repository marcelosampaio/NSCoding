//
//  Settings.m
//  NSCoding
//
//  Created by Marcelo Sampaio on 11/12/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "Settings.h"

#define KEY_USER                @"user"

@implementation Settings


#pragma mark - User
-(void)addUserWithUser:(User *)user {
    // Create NSData object
    NSData *userData=[NSKeyedArchiver archivedDataWithRootObject:user];
    
    // Save it to NSUSerDefaults
    [[NSUserDefaults standardUserDefaults]setObject:userData forKey:KEY_USER];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

-(User *)getUser {
    
    // Retrieve NSData object
    NSData *userData=[[NSUserDefaults standardUserDefaults] objectForKey:KEY_USER];
    
    // Transform it into User Object
    User *user=[NSKeyedUnarchiver unarchiveObjectWithData:userData];
    
    return user;
}


@end

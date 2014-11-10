//
//  ViewController.m
//  NSCoding
//
//  Created by Marcelo Sampaio on 11/9/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "ViewController.h"
#import "User.h"

#define KEY_USER                @"user"

@interface ViewController ()

@end

@implementation ViewController

#pragma mark - Initialization
- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // Show username and password data
    User *user=[[User alloc]init];
    user=[self getUser];
    self.username.text=user.username;
    self.password.text=user.password;
    
    NSLog(@"viewWilAppear *****");
}

#pragma mark - UI Actions
- (IBAction)login:(id)sender {

    // Data Entry check
    if (![self isValidDataEntry]) {
        return;
    }

    // Create username/password if username doesn't exist!
    [self addUserWithUser:[[User alloc]initWithUsername:self.username.text password:self.password.text]];
    
    
}


#pragma mark - User Object Methods
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

#pragma mark - Working Methods
-(BOOL)isValidDataEntry {
    if (self.username.text.length<=0 || self.password.text.length<=0) {
        return NO;
    }
    
    return YES;
}


@end

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

@synthesize settings;


#pragma mark - View Life Cycle
- (void)viewDidLoad {
    [super viewDidLoad];
    self.settings=[[Settings alloc]init];
}

-(void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    // Show username and password data
    User *user=[[User alloc]init];
    user=[self.settings getUser];
    self.username.text=user.username;
    self.password.text=user.password;

}

#pragma mark - UI Actions
- (IBAction)login:(id)sender {

    // Data Entry check
    if (![self isValidDataEntry]) {
        return;
    }

    // Create username/password if username doesn't exist!
    [self.settings addUserWithUser:[[User alloc]initWithUsername:self.username.text password:self.password.text]];

    UIAlertView *alertView=[[UIAlertView alloc]initWithTitle:@"Succesful Transaction!" message:@"Data has been stored." delegate:self cancelButtonTitle:@"OK" otherButtonTitles:nil];
    [alertView show];
}


#pragma mark - Working Methods
-(BOOL)isValidDataEntry {
    if (self.username.text.length<=0 || self.password.text.length<=0) {
        return NO;
    }
    return YES;
}


@end

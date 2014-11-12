//
//  ViewController.h
//  NSCoding
//
//  Created by Marcelo Sampaio on 11/9/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Settings.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *username;
@property (weak, nonatomic) IBOutlet UITextField *password;

@property (nonatomic,strong) Settings *settings;

@end


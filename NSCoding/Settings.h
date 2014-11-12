//
//  Settings.h
//  NSCoding
//
//  Created by Marcelo Sampaio on 11/12/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Settings : NSObject


-(void)addUserWithUser:(User *)user;
-(User *)getUser;

@end

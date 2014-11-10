//
//  User.h
//  NSCoding
//
//  Created by Marcelo Sampaio on 11/9/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface User : NSObject <NSCoding>

@property (nonatomic,strong) NSString *username;
@property (nonatomic,strong) NSString *password;


- (id)initWithUsername:(NSString *)p_username password:(NSString *)p_password;

@end

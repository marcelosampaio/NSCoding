//
//  User.m
//  NSCoding
//
//  Created by Marcelo Sampaio on 11/9/14.
//  Copyright (c) 2014 Marcelo Sampaio. All rights reserved.
//

#import "User.h"

#define KEY_USERNAME            @"username"
#define KEY_PASSWORD            @"password"

@implementation User
@synthesize username,password;

- (id)initWithUsername:(NSString *)p_username password:(NSString *)p_password
{
    self = [super init];
    if (self) {
        username=p_username;
        password=p_password;
    }
    return self;
}

// Unserialize
-(id)initWithCoder:(NSCoder *)aDecoder {
    if (self) {
        self.username=[aDecoder decodeObjectForKey:KEY_USERNAME];
        self.password=[aDecoder decodeObjectForKey:KEY_PASSWORD];
    }
    return self;
}

// Serialize
-(void)encodeWithCoder:(NSCoder *)aCoder {
    [aCoder encodeObject:self.username forKey:KEY_USERNAME];
    [aCoder encodeObject:self.password forKey:KEY_PASSWORD];
}


@end

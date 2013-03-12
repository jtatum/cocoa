//
//  Person.m
//  RaiseMan
//
//  Created by James Tatum on 3/11/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import "Person.h"

@implementation Person

- (id)init
{
    self = [super init];
    if (self) {
        expectedRaise = 0.05;
        personName = @"New Person";
    }
    return self;
}

- (void)setNilValueForKey:(NSString *)key
{
    if ([key isEqual:@"expectedRaise"]) {
        [self setExpectedRaise:0.0];
    } else {
        [super setNilValueForKey:key];
    }
}

@end

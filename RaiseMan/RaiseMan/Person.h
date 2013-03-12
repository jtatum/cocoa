//
//  Person.h
//  RaiseMan
//
//  Created by James Tatum on 3/11/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    NSString *personName;
    float expectedRaise;
}

@property (readwrite, copy) NSString *personName;
@property (readwrite) float expectedRaise;

@end

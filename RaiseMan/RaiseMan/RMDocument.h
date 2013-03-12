//
//  RMDocument.h
//  RaiseMan
//
//  Created by James Tatum on 3/11/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface RMDocument : NSDocument {
    NSMutableArray *employees;
}

- (void)setEmployees:(NSMutableArray *)a;

@end

//
//  RandomController.m
//  Random
//
//  Created by James Tatum on 3/2/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import "RandomController.h"

@implementation RandomController

- (IBAction)generate:(id)sender
{
    int generated;
    generated = (int)(random() % 100) + 1;
    
    NSLog(@"Generated = %d", generated);
    
    [textField setIntValue:generated];
}

- (IBAction)seed:(id)sender
{
    // Seed RNG with time
    srandom((unsigned)time(NULL));
    [textField setStringValue:@"Generator seeded"];
}
@end

//
//  KvcFunAppDelegate.m
//  07-KvcFun
//
//  Created by James Tatum on 3/3/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import "KvcFunAppDelegate.h"

@implementation KvcFunAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (id)init
{
    self = [super init];
    if (self)
    {
        [self setValue:[NSNumber numberWithInt:5] forKey:@"fido"];
        NSNumber *n = [self valueForKey:@"fido"];
        NSLog(@"fido = %@", n);
    }
    return self;
}

// These can also be defined as properties in the header file
- (int)fido
{
    NSLog(@"-fido returning %d", fido);
    return fido;
}

- (void)setFido:(int)d
{
    NSLog(@"-setFido setting to %d", d);
    fido = d;
}

- (IBAction)incrementFido:(id)sender {
    fido++;
    NSLog(@"Fido is now %d", fido);
}

@end

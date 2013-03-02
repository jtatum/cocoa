//
//  TextCounterAppDelegate.m
//  TextCounter
//
//  Created by James Tatum on 3/2/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import "TextCounterAppDelegate.h"

@implementation TextCounterAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)countCharacters:(id)sender {
    NSString *text = [_inputField stringValue];
    int chars = (int)[text length];
    
    [_outputField setStringValue:[NSString stringWithFormat:@"'%@' has %d characters.", text, chars]];
}
@end

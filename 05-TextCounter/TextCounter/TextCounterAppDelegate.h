//
//  TextCounterAppDelegate.h
//  TextCounter
//
//  Created by James Tatum on 3/2/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface TextCounterAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTextField *inputField;
@property (weak) IBOutlet NSTextField *outputField;

- (IBAction)countCharacters:(id)sender;

@end

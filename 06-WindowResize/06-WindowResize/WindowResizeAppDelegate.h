//
//  WindowResizeAppDelegate.h
//  06-WindowResize
//
//  Created by James Tatum on 3/2/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface WindowResizeAppDelegate : NSObject <NSApplicationDelegate>

@property (assign) IBOutlet NSWindow *window;

- (NSSize)windowWillResize:(NSWindow *)sender toSize:(NSSize)frameSize;

@end

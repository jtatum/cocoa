//
//  WindowResizeAppDelegate.m
//  06-WindowResize
//
//  Created by James Tatum on 3/2/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import "WindowResizeAppDelegate.h"

@implementation WindowResizeAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (NSSize)windowWillResize:(NSWindow *)sender
                    toSize:(NSSize)frameSize
{
    NSLog(@"Resizing window to %fx%f", frameSize.width, frameSize.height);
    NSSize newSize = frameSize;
    if (frameSize.height < frameSize.width * 2)
    {
        newSize = NSMakeSize(frameSize.width, frameSize.width * 2);
    }
    return newSize;
}

@end

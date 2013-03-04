//
//  KvcFunAppDelegate.h
//  07-KvcFun
//
//  Created by James Tatum on 3/3/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface KvcFunAppDelegate : NSObject <NSApplicationDelegate> {
    int fido;
}

- (id)init;
- (int)fido;
- (void)setFido:(int)d;
- (IBAction)incrementFido:(id)sender;


@property (assign) IBOutlet NSWindow *window;

@end

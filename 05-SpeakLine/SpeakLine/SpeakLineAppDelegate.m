//
//  SpeakLineAppDelegate.m
//  SpeakLine
//
//  Created by James Tatum on 3/2/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import "SpeakLineAppDelegate.h"

@implementation SpeakLineAppDelegate

- (id)init
{
    self = [super init];
    if (self) {
        NSLog(@"init");
        
        _speechSynth = [[NSSpeechSynthesizer alloc] initWithVoice:nil];
    }
    
    return self;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (IBAction)stopIt:(id)sender {
    NSLog(@"stopping");
    [_speechSynth stopSpeaking];
}

- (IBAction)sayIt:(id)sender {
    NSString *string = [_textField stringValue];
    
    if ([string length] == 0) {
        NSLog(@"Ignoring zero-length string from %@", _textField);
        return;
    }
    [_speechSynth startSpeakingString:string];
    NSLog(@"started speaking %@", string);
}
@end

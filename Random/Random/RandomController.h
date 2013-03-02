//
//  RandomController.h
//  Random
//
//  Created by James Tatum on 3/2/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface RandomController : NSObject {
    IBOutlet NSTextField *textField;
}
- (IBAction)seed:(id)sender;
- (IBAction)generate:(id)sender;
@end

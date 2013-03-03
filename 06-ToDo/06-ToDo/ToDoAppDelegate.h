//
//  ToDoAppDelegate.h
//  06-ToDo
//
//  Created by James Tatum on 3/2/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ToDoAppDelegate : NSObject <NSApplicationDelegate> {
    NSMutableArray *_items;
    NSInteger _selectedRow;
}

- (IBAction)addItem:(id)sender;
- (IBAction)editItem:(id)sender;

@property (assign) IBOutlet NSWindow *window;
@property (weak) IBOutlet NSTableView *tableView;
@property (weak) IBOutlet NSTextField *textField;
@property (weak) IBOutlet NSButton *editButton;

@end

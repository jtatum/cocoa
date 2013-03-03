//
//  ToDoAppDelegate.m
//  06-ToDo
//
//  Created by James Tatum on 3/2/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import "ToDoAppDelegate.h"

@implementation ToDoAppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
}

- (id)init
{
    self = [super init];
    if (self)
    {
        _items = [[NSMutableArray alloc] init];
        [_items addObject:@"test item"];
        [_items addObject:@"another test item"];
        
        _selectedRow = -1;
    }
    return self;
}

- (void)awakeFromNib
{
    [[_textField cell] setSearchButtonCell:nil];
}

// Table data source delegate selectors

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tv
{
    return (NSInteger)[_items count];
}

- (id)tableView:(NSTableView *)tv objectValueForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSString *i = [_items objectAtIndex:row];
    return i;
}

// TableView delegate

- (void)tableViewSelectionDidChange:(NSNotification *)notification
{
    _selectedRow = [_tableView selectedRow];
    if (-1 == _selectedRow)
    {
        [_textField setStringValue:@""];
        [_editButton setEnabled:NO];
    } else {
        [_textField setStringValue:[_items objectAtIndex:_selectedRow]];
        [_editButton setEnabled:YES];
    }
}

- (IBAction)addItem:(id)sender {
    NSString *i = [_textField stringValue];
    if (![@"" isEqual: i])
    {
        [_items addObject:i];
        [_tableView reloadData];
        [_textField setStringValue:@""];
    }
}

- (IBAction)editItem:(id)sender {
    NSString *i = [_textField stringValue];
    if ([@"" isEqual: i])
    {
        // Empty string. Delete the value.
        [_items removeObjectAtIndex:_selectedRow];
        [_tableView reloadData];
        [_tableView deselectAll:nil];
//        [_textField setStringValue:@""];
    } else {
        // Update it
        [_items replaceObjectAtIndex:_selectedRow withObject:i];
        [_tableView reloadData];
        [_tableView deselectAll:nil];
//        [_textField setStringValue:@""];
    }
    
}
@end

//
//  LotteryEntry.m
//  lottery
//
//  Created by James Tatum on 3/2/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import "LotteryEntry.h"

@implementation LotteryEntry

- (id)init
{
    return [self initWithEntryDate:[NSDate date]];
}

- (id)initWithEntryDate:(NSDate *)theDate
{
    self = [super init];
    if (self)
    {
        NSAssert(theDate != nil, @"Argument must be non-nil");
        entryDate = [theDate retain];
        firstNumber = ((int)random() % 100) + 1;
        secondNumber = ((int)random() % 100) + 1;
    }
    return self;
}

- (void)dealloc
{
    NSLog(@"Deallocating %@", self);
    [entryDate release];
    [super dealloc];
}

- (void)setEntryDate:(NSDate *)date
{
    [date retain];
    [entryDate release];
    entryDate = date;
}

- (NSDate *)entryDate
{
    return entryDate;
}

- (int)firstNumber
{
    return firstNumber;
}

- (int)secondNumber
{
    return secondNumber;
}

- (NSString *)description
{
    NSDateFormatter *df = [[NSDateFormatter alloc] init];
    [df setTimeStyle:NSDateFormatterNoStyle];
    [df setDateStyle:NSDateFormatterMediumStyle];
    NSString *result;
    result = [NSString stringWithFormat:@"%@ = %d and %d",
              [df stringFromDate:entryDate],
              firstNumber,
              secondNumber];
    [df release];
    return result;
}

@end

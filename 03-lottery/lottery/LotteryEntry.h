//
//  LotteryEntry.h
//  lottery
//
//  Created by James Tatum on 3/2/13.
//  Copyright (c) 2013 James Tatum. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LotteryEntry : NSObject {
    NSDate *entryDate;
    int firstNumber;
    int secondNumber;
}

- (id)initWithEntryDate:(NSDate *)theDate;
- (void)setEntryDate:(NSDate *)date;
- (NSDate *)entryDate;
- (int)firstNumber;
- (int)secondNumber;

@end

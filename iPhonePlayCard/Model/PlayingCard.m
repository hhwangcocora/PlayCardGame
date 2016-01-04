//
//  PlayingCard.m
//  iPhonePlayCard
//
//  Created by Huihong Wang on 1/2/16.
//  Copyright © 2016 Huihong Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "PlayingCard.h"

@interface PlayingCard ()


@end

@implementation PlayingCard


static const NSArray* rankStrings = nil;
static const NSArray* suitStrings = nil;

@synthesize suit = _suit;

+ (void)initialize
{
    if (!rankStrings) {
        rankStrings = @[@"?",@"A",@"2",@"3",@"4",@"5",@"6",@"7",@"8",@"9",@"10",@"J",@"Q",@"K"];
    }
    if (!suitStrings) {
        suitStrings = @[@"♠︎", @"♣︎", @"♥︎", @"♦︎"];
    }
}

+ (unsigned int)maxRank
{
    return (unsigned int)[rankStrings count];
}

+ (const NSArray *)validSuits
{
    return suitStrings;
}

+ (const NSArray *)validRanks
{
    return rankStrings;
}

- (NSString*)content
{
    return [NSString stringWithFormat:@"%@%@", rankStrings[self.rank], self.suit];
}

- (void)setRank:(unsigned int)rank
{
    if (rank <= [PlayingCard maxRank]) {
        _rank = rank;
    }
}

- (void)setSuit:(NSString *)suit
{
    if ([suitStrings containsObject:suit]) {
        _suit = suit;
    }
}

- (NSString*)suit
{
    return _suit ? _suit : @"?";
}

@end
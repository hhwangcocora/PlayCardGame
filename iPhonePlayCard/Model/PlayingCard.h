//
//  PlayingCard.h
//  iPhonePlayCard
//
//  Created by Huihong Wang on 1/2/16.
//  Copyright © 2016 Huihong Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Card.h"

@interface PlayingCard : Card

@property (strong, nonatomic) NSString *suit;
@property (nonatomic) unsigned int rank;

+ (NSArray *)validSuits;
+ (NSArray *)validRanks;
+ (unsigned int)maxRank;
@end


//
//  Card.m
//  iPhonePlayCard
//
//  Created by Huihong Wang on 1/2/16.
//  Copyright © 2016 Huihong Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Card ()

@end

@implementation Card

- (int) match:(NSArray*)otherCards
{
    int score = 0;
    for (Card* card in otherCards) {
        if ([card.content isEqualToString:self.content]) {
            score = 1;
        }
    }
    return score;
}

@end
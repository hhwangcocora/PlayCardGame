//
//  Deck.m
//  iPhonePlayCard
//
//  Created by Huihong Wang on 1/2/16.
//  Copyright © 2016 Huihong Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface Deck ()

@property (nonatomic, strong) NSMutableArray* deck;

@end


@implementation Deck


- (NSMutableArray*) deck
{
    if (_deck) {
        return _deck;
    }
    _deck = [[NSMutableArray alloc]init];
    return _deck;
}

- (void)addCard: (Card*)card atTop:(BOOL)atTop
{
    if (atTop) {
        [self.deck insertObject:card atIndex:0];
    } else {
        [self.deck addObject:card];
    }
}
- (void)addCard: (Card*)card
{
    [self addCard:card atTop:false];
}

- (Card*)drawRandomCard
{
    Card* selectedCard = nil;
    if ([self.deck count]) {
        int index = arc4random() % [self.deck count];
        NSLog(@"%d", index);
        selectedCard = self.deck[index];
        [self.deck removeObjectAtIndex:index];
    }
    return selectedCard;
}

@end
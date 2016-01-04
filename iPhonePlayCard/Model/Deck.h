//
//  Deck.h
//  iPhonePlayCard
//
//  Created by Huihong Wang on 1/2/16.
//  Copyright © 2016 Huihong Wang. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard: (Card*)card atTop:(BOOL)atTop;
- (void)addCard: (Card*)card;
- (Card*)drawRandomCard;

@end



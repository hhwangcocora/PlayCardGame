//
//  Card.h
//  iPhonePlayCard
//
//  Created by Huihong Wang on 1/2/16.
//  Copyright © 2016 Huihong Wang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (nonatomic, strong) NSString* content;

@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;

- (int) match:(NSArray*)otherCards;

@end
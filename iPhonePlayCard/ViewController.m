//
//  ViewController.m
//  iPhonePlayCard
//
//  Created by Huihong Wang on 1/2/16.
//  Copyright © 2016 Huihong Wang. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@property (strong, nonatomic) PlayingCardDeck *cardDeck;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.cardDeck = [[PlayingCardDeck alloc]init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickCard:(UIButton *)sender {
    if ([sender.currentTitle length]) {
        [sender setBackgroundImage:[UIImage imageNamed:@"stanford"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        [sender setBackgroundImage:[UIImage imageNamed:@"frontcard"] forState:UIControlStateNormal];
        [sender setTitle:[self.cardDeck drawRandomCard].content forState:UIControlStateNormal];
    }
    self.flipCount++;
    [self.flipLabel setText:[NSString stringWithFormat:@"Flip: %d", self.flipCount]];
}


@end

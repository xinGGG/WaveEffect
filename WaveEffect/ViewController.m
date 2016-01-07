//
//  ViewController.m
//  WaveEffect
//
//  Created by Dragonpass on 16/1/7.
//  Copyright © 2016年 xinGGG. All rights reserved.
//

#import "ViewController.h"
#import "UIView+WaveEffect.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *btn;

@end

@implementation ViewController
const NSTimeInterval MDViewOneAnimationDuration		= 0.5;

- (CGFloat)randomNumber0_1 {
    //    return ( rand() % 10000 ) / 10000.0;
    return 255.0;
}
- (UIColor *)randomColor {
    return [UIColor colorWithRed:[self randomNumber0_1] green:[self randomNumber0_1] blue:[self randomNumber0_1] alpha:1.0];
}
- (IBAction)clickBTN:(UIButton *)sender forEvent:(UIEvent *)event {
    
    sender.enabled = NO;
    CGPoint position = [[[event allTouches] anyObject] locationInView:sender];
    [sender mdInflateAnimatedFromPoint:position backgroundColor:[UIColor lightGrayColor] duration:MDViewOneAnimationDuration completion:^{
        sender.enabled = YES;
    }] ;
    
}



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  Demo3ViewController.m
//  ALTest
//
//  Created by Siren on 16/1/8.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import "Demo3ViewController.h"
#define ScreenHeight self.view.frame.size.height
@interface Demo3ViewController ()

@end

@implementation Demo3ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}


-(void)updateViewConstraints{

    if (!self.didSetupConstraints) {
        NSArray *views = @[self.red, self.orange, self.yellow, self.green, self.blue];
        
        [views autoMatchViewsDimension:ALDimensionWidth];
        [views autoSetViewsDimension:ALDimensionHeight toSize:(ScreenHeight-64)/5];
        [[views firstObject] autoPinEdgeToSuperviewEdge:ALEdgeLeft];
        [[views firstObject] autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:0];
        UIView *previousView = nil;
        for (UIView *view in views) {
            if (previousView) {
                [view autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:previousView];
                [view autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:previousView];
            }
            previousView = view;
        }
        [[views lastObject] autoPinEdgeToSuperviewEdge:ALEdgeRight];
        
        self.didSetupConstraints = YES;
    }
    [super updateViewConstraints];
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

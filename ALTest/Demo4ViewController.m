//
//  Demo4ViewController.m
//  ALTest
//
//  Created by Siren on 16/1/8.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import "Demo4ViewController.h"

@interface Demo4ViewController ()

@end

@implementation Demo4ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
}


-(void)updateViewConstraints{

//    static const CGFloat kSmallPadding = 20.0;
//    static const CGFloat kLargePadding = 50.0;
    
    if (!self.didSetupConstraints) {
     
        //ALEdgeLeading(Left) 和 ALEdgeTrailing(Right)
        [self.red autoPinEdgeToSuperviewEdge:ALEdgeTop withInset:0];
        [self.red autoPinEdgeToSuperviewEdge:ALEdgeLeading withInset:20];
        [self.red autoPinEdgeToSuperviewEdge:ALEdgeTrailing withInset:20];
        [self.red autoSetDimension:ALDimensionHeight toSize:21];
        
        NSArray *views = @[self.orange, self.yellow, self.green, self.blue];
        [views autoMatchViewsDimension:ALDimensionWidth];
        [views autoMatchViewsDimension:ALDimensionHeight];
        
        [self.orange autoPinEdgeToSuperviewEdge:ALEdgeLeading withInset:20];
        [self.orange autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.red withOffset:20];
        
        [self.yellow autoPinEdge:ALEdgeLeading toEdge:ALEdgeTrailing ofView:self.orange withOffset:20];
        [self.yellow autoPinEdgeToSuperviewEdge:ALEdgeTrailing withInset:20];
        [self.yellow autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.red withOffset:20];
        
        [self.green autoPinEdgeToSuperviewEdge:ALEdgeLeading withInset:20];
        [self.green autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.orange withOffset:20];
        [self.green autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:20];;
        
        [self.blue autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.yellow withOffset:20];
        [self.blue autoPinEdgeToSuperviewEdge:ALEdgeTrailing withInset:20];
        [self.blue autoPinEdge:ALEdgeLeading toEdge:ALEdgeTrailing ofView:self.green withOffset:20];
        [self.blue autoPinEdgeToSuperviewEdge:ALEdgeBottom withInset:20];;
        
        
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

//
//  Demo2ViewController.m
//  ALTest
//
//  Created by Siren on 16/1/8.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import "Demo2ViewController.h"

@interface Demo2ViewController ()
{
    UISegmentedControl *segment;
    NSArray *constraintsOne;
    NSArray *constraintsTwo;
    BOOL showConstraintsOne;
}
@end

@implementation Demo2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
}

-(void)updateViewConstraints{
    
    if (!self.didSetupConstraints) {
        
        showConstraintsOne = YES;
        /**
         *  第一套布局
         */
        constraintsOne = [NSLayoutConstraint autoCreateAndInstallConstraints:^{
            
            [self.yellow autoCenterInSuperview];
            [self.yellow autoSetDimensionsToSize:CGSizeMake(66, 66)];
            
            [self.blue autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.yellow];
            [self.blue autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:self.yellow];
            [self.blue autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.yellow];
            [self.blue autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:self.yellow];
            
            [self.green autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.yellow];
            [self.green autoPinEdge:ALEdgeRight toEdge:ALEdgeLeft ofView:self.yellow];
            [self.green autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.yellow];
            [self.green autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:self.yellow];
            
            [self.red autoPinEdge:ALEdgeBottom toEdge:ALEdgeTop ofView:self.yellow];
            [self.red autoPinEdge:ALEdgeRight toEdge:ALEdgeLeft ofView:self.yellow];
            [self.red autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.yellow];
            [self.red autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:self.yellow];
            
            [self.orange autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:self.yellow];
            [self.orange autoPinEdge:ALEdgeBottom toEdge:ALEdgeTop ofView:self.yellow];
            [self.orange autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:self.yellow];
            [self.orange autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.yellow];
            
        }];
        
        
        /**
         *  第二套布局
         */
        constraintsTwo = [NSLayoutConstraint autoCreateConstraintsWithoutInstalling:^{
            
            [self.yellow autoCenterInSuperview];
            [self.yellow autoSetDimensionsToSize:CGSizeMake(66, 66)];
            
            [self.blue autoPinEdge:ALEdgeTop toEdge:ALEdgeBottom ofView:self.yellow];
            [self.blue autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.yellow];
            [self.blue autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.yellow];
            [self.blue autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:self.yellow];
            
            [self.red autoPinEdge:ALEdgeBottom toEdge:ALEdgeTop ofView:self.yellow];
            [self.red autoPinEdge:ALEdgeLeft toEdge:ALEdgeLeft ofView:self.yellow];
            [self.red autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.yellow];
            [self.red autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:self.yellow];
            
            [self.green autoPinEdge:ALEdgeBottom toEdge:ALEdgeBottom ofView:self.yellow];
            [self.green autoPinEdge:ALEdgeRight toEdge:ALEdgeLeft ofView:self.yellow];
            [self.green autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.yellow];
            [self.green autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:self.yellow];
            
            [self.orange autoPinEdge:ALEdgeLeft toEdge:ALEdgeRight ofView:self.yellow];
            [self.orange autoPinEdge:ALEdgeBottom toEdge:ALEdgeBottom ofView:self.yellow];
            [self.orange autoMatchDimension:ALDimensionWidth toDimension:ALDimensionWidth ofView:self.yellow];
            [self.orange autoMatchDimension:ALDimensionHeight toDimension:ALDimensionHeight ofView:self.yellow];
        }];
        
        
        
        self.didSetupConstraints = YES;
    }
    
    [super updateViewConstraints];
}


-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    showConstraintsOne = !showConstraintsOne;
    if (showConstraintsOne) {
        [constraintsTwo autoRemoveConstraints];
        [constraintsOne autoInstallConstraints];
    }
    else{
        [constraintsOne autoRemoveConstraints];
        [constraintsTwo autoInstallConstraints];
    }
    /**
     *  添加动画
     */
    [UIView animateWithDuration:0.3 animations:^{
        [self.view layoutIfNeeded];
    }];
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

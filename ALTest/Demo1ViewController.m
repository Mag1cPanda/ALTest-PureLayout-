//
//  Demo1ViewController.m
//  ALTest
//
//  Created by Siren on 16/1/8.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import "Demo1ViewController.h"

@interface Demo1ViewController ()

@end

@implementation Demo1ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setNeedsUpdateConstraints];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 80, 40);
    [btn setTitle:@"Change" forState:UIControlStateNormal];
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(ChangeConstraints) forControlEvents:UIControlEventTouchUpInside];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc]initWithCustomView:btn];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{

    self.isShowingHorizontalLayout = !self.isShowingHorizontalLayout;
    if (self.isShowingHorizontalLayout) {
       [self.navigationController setNavigationBarHidden:NO animated:YES];
        [self.verticalLayoutConstraints autoRemoveConstraints];
        [self.horizontalLayoutConstraints autoInstallConstraints];
    }
    else{
        [self.navigationController setNavigationBarHidden:YES animated:YES];
        [self.horizontalLayoutConstraints autoRemoveConstraints];
        [self.verticalLayoutConstraints autoInstallConstraints];
    }
    
    /**
     *  添加动画
     */
    [UIView animateWithDuration:0.5 animations:^{
        [self.view layoutIfNeeded];
    }];
    
}

-(void)ChangeConstraints{

    self.isShowingHorizontalLayout = !self.isShowingHorizontalLayout;
    if (self.isShowingHorizontalLayout) {
        self.navigationController.navigationBarHidden = NO;
        [self.verticalLayoutConstraints autoRemoveConstraints];
        [self.horizontalLayoutConstraints autoInstallConstraints];
    }
    else{
        self.navigationController.navigationBarHidden = YES;
        [self.horizontalLayoutConstraints autoRemoveConstraints];
        [self.verticalLayoutConstraints autoInstallConstraints];
    }
    
    [UIView animateWithDuration:0.5 animations:^{
        [self.view layoutIfNeeded];
    }];
}

- (void)updateViewConstraints{
    
    
    
    if (!self.didSetupConstraints) {
        NSArray *views = @[self.red, self.orange, self.yellow, self.green, self.blue];
    
        self.isShowingHorizontalLayout = YES;
        
        /**
         *  横向布局(默认，创建并设置约束)
         */
        self.horizontalLayoutConstraints = [NSLayoutConstraint autoCreateAndInstallConstraints:^{

            [views autoSetViewsDimension:ALDimensionHeight toSize:100];
            [views autoDistributeViewsAlongAxis:ALAxisHorizontal alignedTo:ALAttributeHorizontal withFixedSpacing:10 insetSpacing:YES matchedSizes:YES];
            
            [self.red autoAlignAxisToSuperviewAxis:ALAxisHorizontal];

        }];
    
        /**
         *  纵向布局(只创建不设置)
         */
        self.verticalLayoutConstraints = [NSLayoutConstraint autoCreateConstraintsWithoutInstalling:^{
            
            [views autoSetViewsDimension:ALDimensionWidth toSize:250];
            [views autoDistributeViewsAlongAxis:ALAxisVertical alignedTo:ALAttributeVertical withFixedSpacing:30 insetSpacing:YES matchedSizes:YES];
            [self.red autoAlignAxisToSuperviewAxis:ALAxisVertical];
            
        }];
        
        self.didSetupConstraints = YES;
    
    }
    /**
     *  必须调用父类的updateViewConstraints方法
     */
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

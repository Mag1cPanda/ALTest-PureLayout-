//
//  Demo5ViewController.m
//  ALTest
//
//  Created by Siren on 16/1/8.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import "Demo5ViewController.h"

@interface Demo5ViewController ()

@end

@implementation Demo5ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    for (UIView *view in self.view.subviews) {
        [view removeFromSuperview];
        NSLog(@"remove");
    }
    
    self.orange.backgroundColor = [UIColor purpleColor];
    
    [self.view addSubview:self.red];
    [self.red addSubview:self.orange];
    [self.orange addSubview:self.yellow];
    [self.yellow addSubview:self.green];
    [self.green addSubview:self.blue];
}

-(void)updateViewConstraints{

    if (!self.didSetupConstraints) {
     
        [self.red autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsMake(20, 20, 20, 20)];
        [self.orange autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsMake(20, 20, 20, 20)];
        [self.yellow autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsMake(20, 20, 20, 20)];
        [self.green autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsMake(20, 20, 20, 20)];
        [self.blue autoPinEdgesToSuperviewEdgesWithInsets:UIEdgeInsetsMake(20, 20, 20, 20)];
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

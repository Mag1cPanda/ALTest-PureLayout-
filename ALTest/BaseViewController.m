//
//  BaseViewController.m
//  ALTest
//
//  Created by Siren on 16/1/8.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import "BaseViewController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    self.navigationController.navigationBar.translucent= NO;
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    self.red = [UIView newAutoLayoutView];
    self.red.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.red];
    
    self.orange = [UIView newAutoLayoutView];
    self.orange.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.orange];
    
    self.yellow = [UIView newAutoLayoutView];
    self.yellow.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellow];
    
    self.blue = [UIView newAutoLayoutView];
    self.blue.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blue];
    
    self.green = [UIView newAutoLayoutView];
    self.green.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.green];
    
    [self.view setNeedsUpdateConstraints];
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

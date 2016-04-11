//
//  BaseViewController.h
//  ALTest
//
//  Created by Siren on 16/1/8.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import "ViewController.h"
#import "PureLayout.h"
@interface BaseViewController : UIViewController

@property (strong, nonatomic)  UIView *red;
@property (strong, nonatomic)  UIView *orange;
@property (strong, nonatomic)  UIView *yellow;
@property (strong, nonatomic)  UIView *green;
@property (strong, nonatomic)  UIView *blue;


@property (nonatomic, assign) BOOL didSetupConstraints;
@property (nonatomic, assign) BOOL isShowingHorizontalLayout;
@property (nonatomic, strong) NSArray *horizontalLayoutConstraints;
@property (nonatomic, strong) NSArray *verticalLayoutConstraints;

@end

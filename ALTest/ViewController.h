//
//  ViewController.h
//  ALTest
//
//  Created by Siren on 16/1/8.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController


@property (nonatomic, assign) BOOL didSetupConstraints;
@property (nonatomic, assign) BOOL isShowingHorizontalLayout;
@property (nonatomic, strong) NSArray *horizontalLayoutConstraints;
@property (nonatomic, strong) NSArray *verticalLayoutConstraints;

@end


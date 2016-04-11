//
//  ViewController.m
//  ALTest
//
//  Created by Siren on 16/1/8.
//  Copyright © 2016年 Siren. All rights reserved.
//

#import "ViewController.h"
#import "PureLayout.h"
#import "BaseViewController.h"
#import "Demo1ViewController.h"
#import "Demo2ViewController.h"
#import "Demo3ViewController.h"
#import "Demo4ViewController.h"
#import "Demo5ViewController.h"

@interface ViewController ()
<UITableViewDataSource,
UITableViewDelegate>
{

    UITableView *table;
    
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title = @"PureLayout Demo";
    self.navigationController.navigationBar.translucent= NO;
    
    table = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height-64) style:UITableViewStyleGrouped];
    table.delegate = self;
    table.dataSource = self;
    [self.view addSubview:table];
    
    [table autoPinEdgesToSuperviewEdges];
    
    [table registerClass:[UITableViewCell class] forCellReuseIdentifier:@"table"];
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - table代理
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{

    return 5;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    UITableViewCell *cell = [table dequeueReusableCellWithIdentifier:@"table"];
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.textLabel.text = [NSString stringWithFormat:@"Demo%zi",indexPath.row+1];
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{

    UIViewController *vc;
    if (indexPath.row == 0) {
        vc = (Demo1ViewController *)[Demo1ViewController new];
    }
    else if (indexPath.row == 1){
        vc = (Demo2ViewController *)[Demo2ViewController new];
    }
    else if (indexPath.row == 2){
        vc = (Demo3ViewController *)[Demo3ViewController new];
    }
    else if (indexPath.row == 3){
        vc = (Demo4ViewController *)[Demo4ViewController new];
    }
    else{
        vc = (Demo5ViewController *)[Demo5ViewController new];
    }
    vc.title = [NSString stringWithFormat:@"Demo%zi",indexPath.row+1];
    UIBarButtonItem *barBtn = [UIBarButtonItem new];
    barBtn.title = @"";
    self.navigationItem.backBarButtonItem = barBtn;
    [self.navigationController pushViewController:vc animated:YES];
    
}


@end

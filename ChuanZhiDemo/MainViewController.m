//
//  MainViewController.m
//  ChuanZhiDemo
//
//  Created by YI on 16/9/26.
//  Copyright © 2016年 Sandro. All rights reserved.
//

#import "MainViewController.h"
#import "TowViewController.h"

@interface MainViewController ()<chuanzhiDelegate>

@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //TowViewController *towVC = [[TowViewController alloc] init];

    
    
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

- (IBAction)blockBtnAc:(id)sender {
    _danliLabel.text = [danliChuanzhi shareDanli].danliStr;
}

- (IBAction)nextAc:(id)sender {
    
    TowViewController *towVC = [[TowViewController alloc] init];
    towVC.czDelegate = self;
    __weak MainViewController *weakSelf = self;
    towVC.testBlock = ^(NSString *blockString){
        NSLog(@"block回调：%@",blockString);
        weakSelf.blockLabel.text = blockString;
    };
    
    [self.navigationController pushViewController:towVC animated:YES];
}

- (void)setStr:(NSString *)str {
    self.dailiLabel.text = str;
}
@end

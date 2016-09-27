//
//  TowViewController.m
//  ChuanZhiDemo
//
//  Created by YI on 16/9/26.
//  Copyright © 2016年 Sandro. All rights reserved.
//

#import "TowViewController.h"
#import "MainViewController.h"

@interface TowViewController ()

@end

@implementation TowViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
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



- (IBAction)blockAc:(id)sender {
    NSString *str1 = [NSString stringWithFormat:@"这是Block传来的值"];
    self.testBlock(str1);
    
    [self.czDelegate setStr:@"这是代理传来的值"];
    
    [danliChuanzhi shareDanli].danliStr = @"这是单例的值";
}
@end

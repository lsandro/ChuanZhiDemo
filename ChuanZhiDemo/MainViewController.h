//
//  MainViewController.h
//  ChuanZhiDemo
//
//  Created by YI on 16/9/26.
//  Copyright © 2016年 Sandro. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "danliChuanzhi.h"

@interface MainViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *blockLabel;
@property (weak, nonatomic) IBOutlet UILabel *dailiLabel;
@property (weak, nonatomic) IBOutlet UILabel *danliLabel;




- (IBAction)blockBtnAc:(id)sender;

- (IBAction)nextAc:(id)sender;
@end

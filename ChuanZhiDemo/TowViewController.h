//
//  TowViewController.h
//  ChuanZhiDemo
//
//  Created by YI on 16/9/26.
//  Copyright © 2016年 Sandro. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "danliChuanzhi.h"
@protocol chuanzhiDelegate <NSObject>

- (void)setStr:(NSString *)str;

@end

@interface TowViewController : UIViewController

@property (nonatomic, weak) id<chuanzhiDelegate> czDelegate;

@property (nonatomic, copy) void(^testBlock)(NSString *str);


- (IBAction)blockAc:(id)sender;
@end

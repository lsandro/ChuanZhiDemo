//
//  danliChuanzhi.m
//  ChuanZhiDemo
//
//  Created by YI on 16/9/26.
//  Copyright © 2016年 Sandro. All rights reserved.
//

#import "danliChuanzhi.h"

@implementation danliChuanzhi

+(id)shareDanli{
    static danliChuanzhi *shareManager = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shareManager = [[self alloc] init];
        
    });
    
    return shareManager;
}

@end

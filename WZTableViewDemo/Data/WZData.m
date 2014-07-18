//
//  WZData.m
//  TableViewDemo
//
//  Created by Raw on 14-7-18.
//  Copyright (c) 2014年 Raw. All rights reserved.
//

#import "WZData.h"
#import "WZPersonModel.h"

@implementation WZData

+ (NSArray *)getData
{
    NSMutableArray *arr = [NSMutableArray new];
    for (int i = 0; i < 20; i++)
    {
        WZPersonModel *person = [[WZPersonModel alloc] init];
        person.m_name = [NSString stringWithFormat:@"我是数据%d",i];
        person.m_slogan = [NSString stringWithFormat:@"我是签名%d",i];
        [arr addObject:person];
    }
    
    return arr;
}

@end

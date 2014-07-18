//
//  WZPersonModel.m
//  TableViewDemo
//
//  Created by Raw on 14-7-18.
//  Copyright (c) 2014年 Raw. All rights reserved.
//

#import "WZPersonModel.h"

@implementation WZPersonModel

- (id)init
{
    self = [super init];
    if(self)
    {
        self.m_name = @"";
        self.m_slogan = @"";
    }
    return self;
}

@end

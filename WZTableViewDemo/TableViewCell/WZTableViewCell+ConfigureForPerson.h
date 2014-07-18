//
//  WZTableViewCell+ConfigureForPerson.h
//  TableViewDemo
//
//  Created by Raw on 14-7-18.
//  Copyright (c) 2014年 Raw. All rights reserved.
//

#import "WZTableViewCell.h"

@class WZPersonModel;

@interface WZTableViewCell (ConfigureForPerson)

- (void)configureForPerson:(WZPersonModel *)person;


@end

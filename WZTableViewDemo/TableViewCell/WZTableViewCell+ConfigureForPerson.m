//
//  WZTableViewCell+ConfigureForPerson.m
//  TableViewDemo
//
//  Created by Raw on 14-7-18.
//  Copyright (c) 2014年 Raw. All rights reserved.
//

#import "WZTableViewCell+ConfigureForPerson.h"
#import "WZPersonModel.h"

@implementation WZTableViewCell (ConfigureForPerson)

- (void)configureForPerson:(WZPersonModel *)person
{
    self.m_nameLabel.text = person.m_name;
    self.m_detailLabel.text = person.m_slogan;
}

@end

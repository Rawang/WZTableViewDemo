//
//  WZDataSource.m
//  TableViewDemo
//
//  Created by Raw on 14-7-18.
//  Copyright (c) 2014年 Raw. All rights reserved.
//

#import "WZDataSource.h"

@interface WZDataSource()

@property (nonatomic, strong) NSArray *m_items;
@property (nonatomic, copy) NSString  *m_identifier;
@property (nonatomic, copy) TableViewCellConfigureBlock m_configureBlock;

@end

@implementation WZDataSource

- (id)initWithItems:(NSArray *)items cellIdentifier:(NSString *)identifier cellConfigureBlock:(TableViewCellConfigureBlock)configureBlock
{
    self = [super init];
    if(self)
    {
        self.m_items = items;
        self.m_identifier = identifier;
        self.m_configureBlock = [configureBlock copy];
    }
    return self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath
{
    return self.m_items[indexPath.row];
}


#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.m_items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.m_identifier forIndexPath:indexPath];
    id item = [self itemAtIndexPath:indexPath];
    self.m_configureBlock(cell, item);
    return cell;
}

@end

//
//  WZDataSource.h
//  TableViewDemo
//
//  Created by Raw on 14-7-18.
//  Copyright (c) 2014年 Raw. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^TableViewCellConfigureBlock)(id cell, id item);

@interface WZDataSource : NSObject<UITableViewDataSource>

- (id)initWithItems:(NSArray *)items cellIdentifier:(NSString *)identifier cellConfigureBlock:(TableViewCellConfigureBlock)configureBlock;

- (id)itemAtIndexPath:(NSIndexPath *)indexPath;

@end

//
//  WZTableViewCell.m
//  TableViewDemo
//
//  Created by Raw on 14-7-18.
//  Copyright (c) 2014年 Raw. All rights reserved.
//

#import "WZTableViewCell.h"

@implementation WZTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self)
    {
        self.frame = CGRectMake(0, 0, 320, 50);
        self.m_nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(10, 18, 160, 14)];
        self.m_nameLabel.font = [UIFont systemFontOfSize:14];
        self.m_nameLabel.textAlignment = NSTextAlignmentLeft;
        [self.contentView addSubview:self.m_nameLabel];
        
        self.m_detailLabel = [[UILabel alloc] initWithFrame:CGRectMake(200, 18, 100, 14)];
        self.m_detailLabel.font = [UIFont systemFontOfSize:14];
        self.m_detailLabel.textAlignment = NSTextAlignmentRight;
        [self.contentView addSubview:self.m_detailLabel];
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end

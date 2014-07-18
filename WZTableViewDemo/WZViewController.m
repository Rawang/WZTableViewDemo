//
//  WZViewController.m
//  TableViewDemo
//
//  Created by Raw on 14-7-18.
//  Copyright (c) 2014年 Raw. All rights reserved.
//

#import "WZViewController.h"
#import "WZDataSource.h"
#import "WZTableViewCell+ConfigureForPerson.h"
#import "WZPersonModel.h"
#import "WZData.h"

@interface WZViewController ()<UITableViewDelegate>

@property (nonatomic, strong) WZDataSource *m_dataSource;
@property (nonatomic, strong) UITableView *m_tableView;

@end

static NSString * const PersonCellIdentifier = @"PersonCell";


@implementation WZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.navigationItem.title = @"WZTableViewDemo";

    [self setUpTableView];
}

- (void)setUpTableView
{
    self.m_tableView = [UITableView new];
    self.m_tableView.frame = CGRectMake(0, 0, 320, 460);
    self.m_tableView.delegate = self;
    
    //cell-config
    TableViewCellConfigureBlock block = ^(WZTableViewCell *cell, WZPersonModel *person){
        [cell configureForPerson:person];
    };
    
    //load data
    NSArray *persons = [WZData getData];
    
    //init dataSource
    self.m_dataSource = [[WZDataSource alloc] initWithItems:persons
                                             cellIdentifier:PersonCellIdentifier
                                         cellConfigureBlock:block];
    self.m_tableView.dataSource = self.m_dataSource;
    
    //register cell
    [self.m_tableView registerClass:[WZTableViewCell class] forCellReuseIdentifier:PersonCellIdentifier];
    
    [self.view addSubview:self.m_tableView];
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [self.m_tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    WZTableViewCell *cell = (WZTableViewCell *)[self.m_tableView cellForRowAtIndexPath:indexPath];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:nil
                                                    message:cell.m_nameLabel.text
                                                   delegate:nil
                                          cancelButtonTitle:@"OK"
                                          otherButtonTitles:nil];
    [alert show];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

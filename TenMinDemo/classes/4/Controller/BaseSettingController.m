//
//  CYXFourViewController.m
//   
//
//  Created by liman on 15/9/4.
//  Copyright (c) 2015年 liman. All rights reserved.
//
#import "BaseSettingController.h"

@interface BaseSettingController ()

@end

@implementation BaseSettingController

#pragma mark - setter
- (void)setCells:(NSArray *)cells
{
    for (NSArray *items in cells) {
        
        SettingGroupItem *group = [SettingGroupItem new];
        group.items = items;
        
        [_groups addObject:group];
    }
}

#pragma mark - init
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    _groups = [NSMutableArray array];
    
    [self initTableView];
}

#pragma mark - private
- (void)initTableView
{
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
}

#pragma mark - UITableViewDataSource
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return _groups.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    SettingGroupItem *group = _groups[section];
    
    return group.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    SettingGroupItem *group = _groups[indexPath.section];
    SettingItem *item = group.items[indexPath.row];
    
    return [self settingTableView:tableView settingItem:item cellForRowAtIndexPath:indexPath];
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    [self settingTableView:tableView didSelectRowAtIndexPath:indexPath];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    if (section == 0)
    {
        return CGFLOAT_MIN;
    }
    
    return tableView.sectionHeaderHeight;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return tableView.sectionHeaderHeight;
}

@end

//--------------------------------------------------------------------------------------------

@implementation SettingGroupItem

@end

//--------------------------------------------------------------------------------------------

@implementation SettingItem

+ (instancetype)itemWithTitle:(NSString *)title imageName:(NSString *)imageName
{
    SettingItem *item = [SettingItem new];
    item.title = title;
    item.image = [UIImage imageNamed:imageName];
    
    return item;
}

@end

//
//  CYXFourViewController.m
//   
//
//  Created by liman on 15/9/4.
//  Copyright (c) 2015年 liman. All rights reserved.
//
#define identifier @"cell"

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
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell  = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }

    SettingGroupItem *group = _groups[indexPath.section];
    SettingItem *item = group.items[indexPath.row];

    cell.textLabel.text = item.title;
    cell.imageView.image = item.image;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    
    return cell;
}

#pragma mark - UITableViewDelegate
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
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

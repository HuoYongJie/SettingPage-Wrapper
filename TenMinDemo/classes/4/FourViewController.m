//
//  CYXFourViewController.m
//  TenMinDemo
//
//  Created by liman on 15/11/15.
//  Copyright © 2015年 liman. All rights reserved.
//
#define identifier @"FourCell"

#import "FourViewController.h"
#import "FourCell.h"

@interface FourViewController ()

@end

@implementation FourViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    SettingItem *item1 = [SettingItem itemWithTitle:@"我的账号" imageName:@"111.png"];
    SettingItem *item2 = [SettingItem itemWithTitle:@"我的收藏" imageName:@"222.png"];
    SettingItem *item3 = [SettingItem itemWithTitle:@"我去好评" imageName:@"333.png"];
    SettingItem *item4 = [SettingItem itemWithTitle:@"我去吐槽" imageName:@"444.png"];
    SettingItem *item5 = [SettingItem itemWithTitle:@"关注我们" imageName:@"555.png"];
    SettingItem *item6 = [SettingItem itemWithTitle:@"关于我们" imageName:@"666.png"];
    SettingItem *item7 = [SettingItem itemWithTitle:@"退出登录" imageName:@" "];
    
    self.cells = @[
                   @[item1, item2],
                   @[item3, item4],
                   @[item5, item6],
                   @[item7],
                   ];
}


#pragma mark - 必须实现父类方法
- (UITableViewCell *)settingTableView:(UITableView *)tableView settingItem:(SettingItem *)item cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    FourCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell  = [[FourCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = item.title;
    cell.imageView.image = item.image;
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.textAlignment = NSTextAlignmentLeft;
    cell.showRed = NO;
    
    //-------------------------------------------------------------------------------------------------
    if ([item.title isEqualToString:@"退出登录"])
    {
        cell.accessoryType = UITableViewCellAccessoryNone;
        cell.textLabel.textAlignment = NSTextAlignmentCenter;
    }
    
    if ([item.title isEqualToString:@"关于我们"])
    {
        cell.showRed = YES;
    }
    
    return cell;
}

- (void)settingTableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSLog(@"section:%ld, row:%ld",indexPath.section, indexPath.row);
}

@end

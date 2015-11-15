//
//  CYXFourViewController.m
//  TenMinDemo
//
//  Created by liman on 15/11/15.
//  Copyright © 2015年 liman. All rights reserved.
//

#import "CYXFourViewController.h"

@interface CYXFourViewController ()

@end

@implementation CYXFourViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    SettingItem *item1 = [SettingItem itemWithTitle:@"我的账号" imageName:@"111.png"];
    SettingItem *item2 = [SettingItem itemWithTitle:@"我的收藏" imageName:@"222.png"];
    SettingItem *item3 = [SettingItem itemWithTitle:@"我去好评" imageName:@"333.png"];
    SettingItem *item4 = [SettingItem itemWithTitle:@"我去吐槽" imageName:@"444.png"];
    SettingItem *item5 = [SettingItem itemWithTitle:@"关注我们" imageName:@"555.png"];
    SettingItem *item6 = [SettingItem itemWithTitle:@"关于我们" imageName:@"666.png"];
    SettingItem *item7 = [SettingItem itemWithTitle:@"呵呵呵呵呵呵呵呵呵呵呵呵呵" imageName:@" "];
    
    self.cells = @[
                   @[item1, item2],
                   @[item3, item4],
                   @[item5, item6],
                   @[item7],
                   ];
}

#pragma mark - 父类方法
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    NSLog(@"section:%ld  row:%ld", (long)indexPath.section, (long)indexPath.row);
}

@end

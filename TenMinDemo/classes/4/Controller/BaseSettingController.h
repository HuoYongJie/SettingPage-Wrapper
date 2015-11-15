//
//  CYXFourViewController.h
//   
//
//  Created by liman on 15/9/4.
//  Copyright (c) 2015年 liman. All rights reserved.
//
#import <UIKit/UIKit.h>

@interface BaseSettingController : UIViewController <UITableViewDataSource, UITableViewDelegate>

/**< 组数组 描述TableView有多少组 */
@property (strong, nonatomic) NSMutableArray * groups;
/**< UITableView */
@property (strong, nonatomic) UITableView *tableView;
/**< 设置cells */
@property (strong, nonatomic) NSArray *cells;

@end

//--------------------------------------------------------------------------------------------

@interface SettingGroupItem : NSObject

/** 头部标题 */
@property (strong, nonatomic) NSString * headerTitle;
/** 尾部标题 */
@property (strong, nonatomic) NSString * footerTitle;
/** 组中的行数组 */
@property (strong, nonatomic) NSArray * items;

@end

//--------------------------------------------------------------------------------------------

@interface SettingItem : NSObject

/**< 标题 */
@property (strong, nonatomic) NSString * title;
/**< 图片 */
@property (strong, nonatomic) UIImage * image;

/**< 设置标题图片 类方法 */
+ (instancetype)itemWithTitle:(NSString *)title imageName:(NSString *)imageName;

@end
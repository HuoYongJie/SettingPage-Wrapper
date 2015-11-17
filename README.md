SettingPage Wrapper
================

##### 每个App都有设置界面, 都大同小异, 所以我封装了一个设置界面的框架, 以后就不用再单独写设置界面了, 一劳永逸.

效果图: ![](http://7sbo4v.com1.z0.glb.clouddn.com/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202015-11-17%20%E4%B8%8B%E5%8D%882.55.18.png)

使用方法:

	#import "BaseSettingController.h"

	@interface FourViewController : BaseSettingController

	@end
	
	/-----------------------------分割线---------------------------/
	
	#import "FourViewController.h"
	
	#define identifier @"cell"
	
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
	    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
	    if (!cell) {
	        cell  = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
	    }
	    
	    cell.textLabel.text = item.title;
	    cell.imageView.image = item.image;
	    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	    cell.textLabel.textAlignment = NSTextAlignmentLeft;
	    
	    //---------------------------------------------------------------
	    if ([item.title isEqualToString:@"退出登录"])
	    {
	        cell.accessoryType = UITableViewCellAccessoryNone;
	        cell.textLabel.textAlignment = NSTextAlignmentCenter;
	    }
	    
	    return cell;
	}
	
	- (void)settingTableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
	{
	    NSLog(@"section:%ld, row:%ld",indexPath.section, indexPath.row);
	}
	
	@end
	
	
---


##### Each App has 'setting-controller', and they are similar, so I wrapped a framework to package 'setting-controller'

- How to use: see above
- Renderings: see above
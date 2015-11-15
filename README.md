SettingPage Wrapper
================

##### 每个App都有设置界面, 都大同小异, 所以我封装了一个设置界面的框架, 以后就不用再单独写设置界面了, 一劳永逸.

效果图: ![](http://7sbo4v.com1.z0.glb.clouddn.com/%E5%B1%8F%E5%B9%95%E5%BF%AB%E7%85%A7%202015-11-15%20%E4%B8%8B%E5%8D%887.15.19.png)

使用方法:

	#import "BaseSettingController.h"
	
	@interface CYXFourViewController : BaseSettingController
	
	@end
	
	/-----------------------------分割线---------------------------/
	
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
	
	
---


##### Each App has 'setting-controller', and they are similar, so I wrapped a framework to package 'setting-controller'

- How to use: see above
- Renderings: see above
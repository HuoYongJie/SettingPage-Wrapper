SettingPage Wrapper
================

##### 每个App都有设置界面, 都大同小异, 所以我封装了一个设置界面的框架, 以后就不用再单独写设置界面了, 一劳永逸. `支持自定义UITableViewCell`

效果图: ![](http://7sbo4v.com1.z0.glb.clouddn.com/213213.png)

使用方法: (详情请下载demo查看)

	// .h文件
	@interface MyViewController : BaseSettingController
	
	//--------------------------------分割线-----------------------------------
	
	// .m文件
	- (void)viewDidLoad
	{
		[super viewDidLoad];
	
		SettingItem *item1 = [SettingItem itemWithTitle:@"用户名" subTitle:@"小猫" imageName:@"1.png" switchType:0 accessoryType:0 center:NO];
		SettingItem *item2 = [SettingItem itemWithTitle:@"Wi-Fi" subTitle:@"关闭" imageName:@"2.png" switchType:0 accessoryType:1 center:NO];
		SettingItem *item3 = [SettingItem itemWithTitle:@"我去好评" subTitle:nil imageName:@"3.png" switchType:0 accessoryType:1 center:NO];
		SettingItem *item4 = [SettingItem itemWithTitle:@"开启通知" subTitle:nil imageName:@"4.png" switchType:1 accessoryType:0 center:NO];
		SettingItem *item5 = [SettingItem itemWithTitle:@"关注我们" subTitle:nil imageName:@"5.png" switchType:0 accessoryType:1 center:NO];
		SettingItem *item6 = [SettingItem itemWithTitle:@"VPN" subTitle:nil imageName:@"6.png" switchType:2 accessoryType:0 center:NO];
		SettingItem *item7 = [SettingItem itemWithTitle:@"退出登录" subTitle:nil imageName:@" " switchType:0 accessoryType:0 center:YES];
	
		self.cells = @[
					   @[item1, item2],
					   @[item3, item4],
					   @[item5, item6],
					   @[item7],
					   ];
	}
	
	#pragma mark - 父类方法
	- (UITableViewCell *)settingTableView:(UITableView *)tableView settingItem:(SettingItem *)item cellForRowAtIndexPath:(NSIndexPath *)indexPath
	{
		FourCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
		if (!cell) {
			cell  = [[FourCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
		}
	
		cell.item = item;
		cell.delegate = self;
	
		return cell;
	}
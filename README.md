SettingPage Wrapper
================

##### 每个App都有设置界面, 都大同小异, 所以我封装了一个设置界面的框架, 以后就不用再单独写设置界面了, 一劳永逸. `支持自定义UITableViewCell`

效果图: ![](http://7sbo4v.com1.z0.glb.clouddn.com/B938FD0E-DA5E-484D-B3BA-BE43AE87A3A9.png)

使用方法: (详情请下载demo查看)

	// .h文件 继承BaseSettingController
	@interface MyViewController : BaseSettingController
	
	//--------------------------------分割线-----------------------------------
	
	// .m文件
	// 设置cell标题,副标题,图片,SwitchType属性,accessoryType属性,是否居中显示
	SettingItem *item1 = [SettingItem itemWithTitle:@"蓝牙" subTitle:@"打开" imageName:@"1.png" switchType:0 accessoryType:0 center:NO];
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
                   
    #pragma mark - 必须实现父类方法
	- (UITableViewCell *)settingTableView:(UITableView *)tableView settingItem:(SettingItem *)item cellForRowAtIndexPath:(NSIndexPath *)indexPath
	{
	    MyCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
	    if (!cell) {
	        cell  = [[MyCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
	    }
	    
	    cell.item = item;
	    cell.delegate = self;
	    
	    return cell;
	}
	
	- (void)settingTableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
	{
	    NSLog(@"section:%ld, row:%ld",indexPath.section, indexPath.row);
	}
	
---


##### Each App has 'setting-controller', and they are similar, so I wrapped a framework to package 'setting-controller' `Support custom UITableViewCell`

- How to use: see above
- Renderings: see above
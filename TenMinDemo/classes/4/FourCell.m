//
//  FourCell.m
//  SettingPage框架
//
//  Created by liman on 15/11/19.
//  Copyright © 2015年 CYX. All rights reserved.
//

#import "FourCell.h"
#import "UIViewExt.h"

@implementation FourCell

#pragma mark - init
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {

        [self initCustomImageView];
    }
    
    return self;
}

#pragma mark - private
- (void)initCustomImageView
{
    _customImageView = [UIImageView new];
    _customImageView.image = [UIImage imageNamed:@"avatar_default.png"];
    [self.contentView addSubview:_customImageView];
    
    _customImageView.layer.cornerRadius = 20/2;
    _customImageView.layer.masksToBounds = YES;
}

#pragma mark - layoutSubviews
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if ([self.item.title isEqualToString:@"蓝牙"])
    {
        _customImageView.frame = CGRectMake(self.contentView.width - 80, 9, 24, 24);
    }
    else
    {
        _customImageView.frame = CGRectZero;
    }
}

@end

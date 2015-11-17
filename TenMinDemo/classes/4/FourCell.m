//
//  FourCell.m
//  SettingPage框架
//
//  Created by liman on 15/11/17.
//  Copyright © 2015年 CYX. All rights reserved.
//

#import "FourCell.h"

@implementation FourCell
{
    UIImageView *_redImageView;
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        
        _redImageView = [UIImageView new];
        _redImageView.image = [UIImage imageNamed:@"red.png"];
        [self.contentView addSubview:_redImageView];
    }
    
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    if (_showRed)
    {
        _redImageView.frame = CGRectMake(self.contentView.frame.size.width - 22, 12, 20, 20);
    }
    else
    {
        _redImageView.frame = CGRectZero;
    }
}

@end

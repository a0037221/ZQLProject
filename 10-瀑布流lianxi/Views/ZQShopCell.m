//
//  ZQShopCell.m
//  10-瀑布流lianxi
//
//  Created by qingLiang on 15/4/20.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "ZQShopCell.h"
#import <UIImageView+WebCache.h>
#import "ZQShop.h"

@interface ZQShopCell ()
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *priceLabel;

@end

@implementation ZQShopCell

- (void)setShop:(ZQShop *)shop
{
    _shop = shop;
    [self.imgView sd_setImageWithURL:[NSURL URLWithString:shop.img]];
    self.priceLabel.text = shop.price;
}

@end

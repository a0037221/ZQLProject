//
//  ZQShop.h
//  10-瀑布流lianxi
//
//  Created by qingLiang on 15/4/20.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZQShop : NSObject

@property(nonatomic,copy) NSString *img;
@property(nonatomic,copy) NSString *price;
@property(nonatomic,assign) int h;
@property(nonatomic,assign) int w;

- (instancetype)initWithDict:(NSDictionary *)dict;
+ (instancetype)shopWithDict:(NSDictionary *)dict;
+ (NSArray *)shops;
@end

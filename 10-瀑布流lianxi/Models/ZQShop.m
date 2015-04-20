//
//  ZQShop.m
//  10-瀑布流lianxi
//
//  Created by qingLiang on 15/4/20.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "ZQShop.h"

@implementation ZQShop

- (instancetype)initWithDict:(NSDictionary *)dict
{
    if (self = [super init]) {
        [self setValuesForKeysWithDictionary:dict];
    }
    return self;
}

+ (instancetype)shopWithDict:(NSDictionary *)dict
{
    return [[self alloc] initWithDict:dict];
}

+ (NSArray *)shops
{
    NSString *str = [[NSBundle mainBundle] pathForResource:@"1.plist" ofType:nil];
    NSArray *array = [NSArray arrayWithContentsOfFile:str];
    
    NSMutableArray *arrM = [NSMutableArray arrayWithCapacity:array.count];
    for (NSDictionary *dict in array) {
        [arrM addObject:[self shopWithDict:dict]];
    }
    return arrM.copy;
}
@end

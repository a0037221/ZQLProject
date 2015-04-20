//
//  ZQWaterFlowLayout.h
//  10-瀑布流lianxi
//
//  Created by qingLiang on 15/4/20.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ZQWaterFlowLayout : UICollectionViewFlowLayout

@property(nonatomic,assign) int colunms;

@property(nonatomic,strong) NSArray *dataList;
@end

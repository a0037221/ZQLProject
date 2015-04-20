//
//  ZQWaterFlowLayout.m
//  10-瀑布流lianxi
//
//  Created by qingLiang on 15/4/20.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "ZQWaterFlowLayout.h"
#import "ZQShop.h"

@interface ZQWaterFlowLayout ()

@property(nonatomic,strong) NSArray *layoutAttr;

@end

@implementation ZQWaterFlowLayout

- (void)prepareLayout
{
    //设置cell的尺寸
    CGFloat contentW = self.collectionViewContentSize.width - self.sectionInset.left - self.sectionInset.right;
    CGFloat itemW = (contentW - self.minimumInteritemSpacing * (self.colunms - 1)) / self.colunms;
    [self shijiLayout:itemW];
}

- (NSArray *)layoutAttributesForElementsInRect:(CGRect)rect
{
    return self.layoutAttr;
}

//设置每一个cell的实际尺寸
- (void)shijiLayout:(CGFloat)itemW
{
    //定义一个数组,累加高度
    float colHeight[self.colunms];
    //初始化
    for (int i = 0; i<self.colunms; i++) {
        colHeight[i] = 0;
    }
    //定义一个总高度
    float sumHeight = 0;
    int index = 0;
    NSMutableArray *arrM = [NSMutableArray array];
    for (ZQShop *shop in self.dataList) {
        //计算itemH
        CGFloat itemH = [self itemH:CGSizeMake(shop.w, shop.h) andItemW:itemW];
        
        //计算x和y
        //列索引
        int colIdx = index % self.colunms;
        CGFloat itemX = self.sectionInset.left + colIdx * (itemW + self.minimumInteritemSpacing);
        CGFloat itemY = colHeight[colIdx];
        
        //做累加
        colHeight[colIdx] += itemH + self.minimumLineSpacing;
        
        
        NSIndexPath *indexPath = [NSIndexPath indexPathForItem:index inSection:0];
        UICollectionViewLayoutAttributes *attr = [UICollectionViewLayoutAttributes layoutAttributesForCellWithIndexPath:indexPath];
        attr.frame = CGRectMake(itemX, itemY, itemW, itemH);
        [arrM addObject:attr];
        index++;
    }
    self.itemSize = CGSizeMake(itemW, sumHeight / self.dataList.count);
    self.layoutAttr = arrM.copy;
}

/**
 *  等比例缩放
 */
- (CGFloat)itemH:(CGSize)size andItemW:(CGFloat)itemW
{
    return size.height * itemW / size.width;
}

@end

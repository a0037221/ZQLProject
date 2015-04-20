//
//  ZQShopViewController.m
//  10-瀑布流lianxi
//
//  Created by qingLiang on 15/4/20.
//  Copyright (c) 2015年 itcast. All rights reserved.
//

#import "ZQShopViewController.h"
#import "ZQShop.h"
#import "ZQShopCell.h"
#import "ZQWaterFlowLayout.h"
@interface ZQShopViewController ()

@property(nonatomic,strong) NSArray *shops;

@end

@implementation ZQShopViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}



#pragma mark <UICollectionViewDataSource>




- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return self.shops.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"shop_cell" forIndexPath:indexPath];
    
    cell.backgroundColor = [UIColor colorWithRed:((float)arc4random_uniform(256) / 255.0) green:((float)arc4random_uniform(256) / 255.0) blue:((float)arc4random_uniform(256) / 255.0) alpha:1.0];
    
    return cell;
}
#pragma mark - 懒加载
- (NSArray *)shops
{
    if (_shops == nil) {
        _shops = [ZQShop shops];
    }
    return _shops;
}


@end

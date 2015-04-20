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

@property (weak, nonatomic) IBOutlet ZQWaterFlowLayout *lauyout;

@end

@implementation ZQShopViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.lauyout.dataList = self.shops;
    self.lauyout.colunms = 2;

    
}



#pragma mark <UICollectionViewDataSource>




- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return self.shops.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    ZQShopCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"shop_cell" forIndexPath:indexPath];
    
    
    cell.shop = self.shops[indexPath.item];
    
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

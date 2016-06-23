//
//  SBBaseViewController.h
//  StockGroup
//
//  Created by lsb on 15/11/30.
//  Copyright © 2015年 lsb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBHandlerDelegate.h"

@interface SBBaseViewController : UIViewController<SBHandlerDelegate>



/**
 *  返回按钮的title; 防止title 过长引起的下一页面的title 不居中问题
 */
@property (nonatomic, copy) NSString *backTitle;

/**
 *  用作数据更新时间表ID（唯一性标识）
 *
 *  @return 唯一的数值(建义用当前版本号+ 数值的方式）
 */
- (NSInteger)uniqueID;

- (void)callbackWithEventID:(NSInteger)eventID result:(id)result;

- (void)pushViewControllerWithUniqueID:(NSInteger)uniqueID;

- (void)pushViewControllerWithUniqueID:(NSInteger)uniqueID params:(id)params;
/**
 *  回退一步
 *
 *  @param animated 是否显示动画
 */
- (void)goBackWithAnimated:(BOOL)animated;
/**
 *  回退几步
 *
 *  @param step     步数
 *  @param animated 是否显示动画
 */
- (void)goBackByBackStep:(NSInteger)step animated:(BOOL)animated;
/**
 *  返回根视图
 *
 *  @param animated 是否显示动画
 */
- (void)goBackRootViewControllerAnimated:(BOOL)animated;


@end
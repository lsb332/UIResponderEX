//
//  SBBaseView.h
//  StockGroup
//
//  Created by lsb on 15/11/30.
//  Copyright © 2015年 lsb. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SBBaseHandler.h"
#import "SBBaseViewController.h"


#define SBWeakSelf __weak typeof(self) weakSelf = self;

@interface UIView (SBaseView)

- (void)willAppear;
- (void)didAppear;
- (void)willDisappear;
- (void)didDisappear;
- (void)didLoad;
@end

@interface SBBaseView : UIView


@property (nonatomic, strong)  SBBaseHandler *handler;


@property (nonatomic, weak, readonly) SBBaseViewController *belongViewController;

@property (nonatomic, assign) BOOL enableTabCloseKeyboard;

- (id)initWithController:(SBBaseViewController *)controller;



@end

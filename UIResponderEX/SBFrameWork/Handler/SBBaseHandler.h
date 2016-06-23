//
//  SBBaseHandler.h
//  StockGroup
//
//  Created by lsb on 15/11/30.
//  Copyright © 2015年 lsb. All rights reserved.
//

#import "SBHandlerDelegate.h"
#import "SBBaseTableDataSource.h"

typedef void(^NetSuccessCallback)(NSDictionary * result);
typedef void(^NetFailedCallback)(NSString * error,NSInteger code);


@interface SBBaseHandler : NSObject

/**
 *  当前所controller的 唯一标识用加载缓存
 */
@property (nonatomic, assign) NSInteger *uniqueID;

@property (nonatomic, copy) NetSuccessCallback netSuccessCallback;

@property (nonatomic, copy) NetFailedCallback netFailedCallback;

@property (nonatomic, weak) id<SBHandlerDelegate> handlerDelegate;

// 列表的数据源
@property (nonatomic, strong)SBBaseTableDataSource *tableDataSource;


- (void)loadData;

- (void)loadNextPageData;

- (void)loadDataFromCache;

- (void)clearBlock;

- (BOOL)checkResponseResultStatus;

- (void)handleResult;




@end

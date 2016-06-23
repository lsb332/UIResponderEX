//
//  SBBaseHandler.m
//  StockGroup
//
//  Created by lsb on 15/11/30.
//  Copyright © 2015年 lsb. All rights reserved.
//

#import "SBBaseHandler.h"

@implementation SBBaseHandler


-(void)dealloc{
    [self clearBlock];
     _handlerDelegate=nil;
    NSLog(@"%@-Dealloc",NSStringFromClass([self class]));
}
- (void)clearBlock{
    self.netFailedCallback=nil;
    self.netSuccessCallback=nil;
}

-(void)loadData{
    
}

/**
 *  要求子类重写
 */
- (void)handleResult{
    if(self.netSuccessCallback){
      // self.netSuccessCallback(self.);
    }
}


- (BOOL)checkResponseResultStatus {
//    NSString *error = nil;
//    NSInteger errorCode = 0;
//    BOOL isOK = [SBBaseHandler checkRequestResponseStatus:self error:&error errorCode:&errorCode];
//    if (isOK) {
//        [self handleResult];
//    }else{
//        if (self.netFailedCallback) {
//            self.netFailedCallback(error,errorCode);
//        }
//    }
//    return isOK;
    return YES;
}

- (void)loadDataFromCache {
    
}

- (void)loadNextPageData {
    
};
@end

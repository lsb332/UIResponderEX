//
//  BaseHandlerDelegate.h
//  StockGroup
//
//  Created by lsb on 15/11/30.
//  Copyright © 2015年 lsb. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol SBHandlerDelegate <NSObject>

@optional;
- (void)callbackWithEventID:(NSInteger)eventID result:(id)result;

@end

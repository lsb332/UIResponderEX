//
//  UIResponder+Router.m
//  StockGroup
//
//  Created by lsb on 15/4/14.
//  Copyright (c) 2015年 lsb. All rights reserved.
//

#import "UIResponder+Router.h"

@implementation UIResponder (Router)

- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo
{
    [[self nextResponder] routerEventWithName:eventName userInfo:userInfo];
}

@end

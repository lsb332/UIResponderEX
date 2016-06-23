//
//  TestViewHandler.m
//  UIResponderEX
//
//  Created by lsb on 16/6/23.
//  Copyright © 2016年 lsb. All rights reserved.
//

#import "TestViewHandler.h"

@implementation TestViewHandler

- (void)loadData {
    NSMutableArray *datasource = [NSMutableArray arrayWithCapacity:10];
    for (int i = 0; i< 10; ++i) {
        [datasource addObject:[NSString stringWithFormat:@"Row number is %d",i]];
    }
    self.tableDataSource.dataSouce = [datasource copy];
}

@end

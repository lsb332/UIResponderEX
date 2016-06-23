//
//  SBBaseTableDataSource.m
//  A50
//
//  Created by lsb on 16/3/17.
//  Copyright © 2016年 lsb. All rights reserved.
//

#import "SBBaseTableDataSource.h"

@implementation SBBaseTableDataSource



- (void)dealloc {
    NSLog(@"%@------dealloc",[self class]);
}


- (id)initWithTableView:(UITableView *)tableView {
    
    self = [super init];
    if (self) {
        _tableView = tableView;//弱引用
    }
    
    return self;
}
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 0;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return _dataSouce.count;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    return nil;
}

- (void)appendTableViewWith:(NSArray *)data{
    
}

@end

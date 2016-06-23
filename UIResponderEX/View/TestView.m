//
//  TestView.m
//  UIResponderEX
//
//  Created by lsb on 16/6/23.
//  Copyright © 2016年 lsb. All rights reserved.
//

#import "TestView.h"
#import "TestViewTableDataSource.h"

#import "UIResponder+Router.h"

@implementation TestView {
    UITableView *_tableView;
}



- (instancetype)initWithController:(SBBaseViewController *)controller {
   self = [super initWithController:controller];
    if (self) {
        [self setup];
    }
    return self;
}

- (void)setup {
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectZero style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.rowHeight = 60;
    _tableView.translatesAutoresizingMaskIntoConstraints = NO;
    [_tableView registerClass:[TestViewTableCell class] forCellReuseIdentifier:@"cell"];
    [self addSubview:_tableView];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-0-[_tableView]-0-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_tableView)]];
    [self addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-0-[_tableView]-0-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(_tableView)]];
}

- (void)setHandler:(SBBaseHandler *)handler {
    [super setHandler:handler];
    // 把tableViewDataSource 分离出去
    TestViewTableDataSource *tableViewDataSoure = [[TestViewTableDataSource alloc] initWithTableView:_tableView];
    
    _tableView.dataSource = tableViewDataSoure;
    self.handler.tableDataSource = tableViewDataSoure;
}

- (void)didLoad {
    [self.handler loadData];
}
/*
#pragma UIResponder(Router)
- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"View中捕获" message:userInfo[@"object"] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alertView show];
}*/
@end

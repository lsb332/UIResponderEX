//
//  SBBaseTableDataSource.h
//  A50
//
//  Created by lsb on 16/3/17.
//  Copyright © 2016年 lsb. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SBBaseTableDataSourceDelegate <NSObject>


- (void)reloadDataCompletion:(id)parma;


@end

@interface SBBaseTableDataSource : NSObject<UITableViewDataSource>


@property (nonatomic, copy) NSArray *dataSouce;

@property (nonatomic, weak,readonly) UITableView *tableView;

@property (nonatomic, weak) id<SBBaseTableDataSourceDelegate> delegate;


- (id)initWithTableView:(UITableView *)tableView;

// 把方法暴露出去 让子类重写

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView;

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

- (void)appendTableViewWith:(NSArray *)data;

@end
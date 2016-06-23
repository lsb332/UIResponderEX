//
//  TestViewTableDataSource.m
//  UIResponderEX
//
//  Created by lsb on 16/6/23.
//  Copyright © 2016年 lsb. All rights reserved.
//

#import "TestViewTableDataSource.h"
#import "UIResponder+Router.h"

@implementation TestViewTableDataSource


- (id)initWithTableView:(UITableView *)tableView {
    self = [super initWithTableView:tableView];
    if (self) {
        
    }
    
    return self;
}

- (void)setDataSouce:(NSArray *)dataSouce {
    [super setDataSouce:dataSouce];
    [self.tableView reloadData];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
    
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return self.dataSouce.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    TestViewTableCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.textLabel.text = self.dataSouce[indexPath.row];
    
    return cell;
}

@end



@implementation TestViewTableCell



- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setup];
    }
    return self;
}


- (void)setup {
    UIButton *showNumberButton = [UIButton buttonWithType:UIButtonTypeCustom];
    [showNumberButton setTitle:@"Show row number" forState:UIControlStateNormal];
    showNumberButton.backgroundColor = [UIColor purpleColor];
    showNumberButton.layer.cornerRadius = 4;
    showNumberButton.layer.masksToBounds = YES;
    showNumberButton.translatesAutoresizingMaskIntoConstraints = NO;
    [showNumberButton addTarget:self action:@selector(showNumberButtonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self.contentView addSubview:showNumberButton];
    
    [self.contentView addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:[showNumberButton(180)]-20-|" options:0 metrics:nil views:NSDictionaryOfVariableBindings(showNumberButton)]];
    [self.contentView addConstraint:[NSLayoutConstraint constraintWithItem:showNumberButton attribute:NSLayoutAttributeCenterY relatedBy:NSLayoutRelationEqual toItem:self.contentView attribute:NSLayoutAttributeCenterY multiplier:1.0 constant:0]];
}

- (void)showNumberButtonClick:(id)sender {
    [self.nextResponder routerEventWithName:@"showNumber" userInfo:@{@"object":self.textLabel.text}];
}
@end
//
//  SBBaseView.m
//  StockGroup
//
//  Created by lsb on 15/11/30.
//  Copyright © 2015年 lsb. All rights reserved.
//

#import "SBBaseView.h"

@implementation SBBaseView

- (id)initWithController:(SBBaseViewController *)controller{
    self = [super init];
    if (self) {
        _belongViewController = controller;
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}


- (void)dealloc {
    NSLog(@"%@-----dealloc",NSStringFromClass([self class]));
    [self.handler clearBlock];
}


- (void)setEnableTabCloseKeyboard:(BOOL)enableTabCloseKeyboard {
    if (enableTabCloseKeyboard) {
        UITapGestureRecognizer *recognizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(closeKeyboard)];
        [self addGestureRecognizer:recognizer];
    }
}

- (void)closeKeyboard {
    [self endEditing:YES];
}

- (void)willAppear {
    
}
- (void)didAppear{
    
}
- (void)willDisappear {
    
}

- (void)didDisappear {
}

- (void)didLoad {
    
}
@end

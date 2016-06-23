//
//  SBBaseViewController.m
//  StockGroup
//
//  Created by lsb on 15/11/30.
//  Copyright © 2015年 lsb. All rights reserved.
//

#import "SBBaseViewController.h"
#import "SBBaseView.h"

@interface SBBaseViewController ()

@end

@implementation SBBaseViewController



- (void)dealloc {
    NSLog(@"%@------dealloc",NSStringFromClass([self class]));
}
- (id)init{
    self=[super init];
    if (self) {
        //_model=[[_model alloc]initWithUniqueID:[self uniqueID] controllerName:self];
    }
    return self;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void)callbackWithEventID:(NSInteger)eventID result:(id)result{
}

- (NSInteger)uniqueID{
    return -1;
}

- (void)pushViewControllerWithUniqueID:(NSInteger)uniqueID {
    
}
- (void)pushViewControllerWithUniqueID:(NSInteger)uniqueID params:(id)params{
    
}
- (void)goBackWithAnimated:(BOOL)animated {
    [self.navigationController popViewControllerAnimated:animated];
}

- (void)setBackTitle:(NSString *)backTitle {
    _backTitle = backTitle;
    if (self.navigationItem) {
        self.navigationItem.backBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:_backTitle style:UIBarButtonItemStylePlain target:nil action:nil];
    }
}
/**
 *  回退几步
 *
 *  @param step     步数
 *  @param animated 是否显示动画
 */
- (void)goBackByBackStep:(NSInteger)step animated:(BOOL)animated{
    
    if (step == 0) {
        return;
    }
    if (step == 1) {
        [self goBackWithAnimated:animated];
        return;
    }
    NSArray *viewControllers = [self.navigationController viewControllers];
    if (step >=viewControllers.count) {
        [self.navigationController popToRootViewControllerAnimated:animated];
        return;
    }
    UIViewController *toController = viewControllers[viewControllers.count-step-1];
    [self.navigationController popToViewController:toController animated:animated];
}

/**
 *  返回根视图
 *
 *  @param animated 是否显示动画
 */
- (void)goBackRootViewControllerAnimated:(BOOL)animated {
    [self.navigationController popToRootViewControllerAnimated:animated];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    if ([self.view respondsToSelector:@selector(didLoad)]) {
           [self.view didLoad];
    }
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    if ([self.view respondsToSelector:@selector(didAppear)]) {
            [self.view didAppear];
    }
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    if ([self.view respondsToSelector:@selector(willAppear)]) {
        [self.view willAppear];;
    }
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    if ([self.view respondsToSelector:@selector(didDisappear)]) {
        [self.view didDisappear];
    }
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    if ([self.view respondsToSelector:@selector(willDisappear)]) {
        [self.view willDisappear];
    }
}
@end

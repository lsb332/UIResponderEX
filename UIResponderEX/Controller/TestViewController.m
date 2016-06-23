//
//  TestViewController.m
//  UIResponderEX
//
//  Created by lsb on 16/6/23.
//  Copyright © 2016年 lsb. All rights reserved.
//

#import "TestViewController.h"
#import "TestView.h"
#import "TestViewHandler.h"
#import "UIResponder+Router.h"

@interface TestViewController ()

@end

@implementation TestViewController



- (void)loadView {
    [super loadView];
    TestView *view = [[TestView alloc]initWithController:self];
    TestViewHandler *handler = [[TestViewHandler alloc] init];
    view.handler = handler;
    self.view = view;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"UIResponderEx";
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

#pragma UIResponder(Router)
- (void)routerEventWithName:(NSString *)eventName userInfo:(NSDictionary *)userInfo {
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:@"ViewController中捕获" message:userInfo[@"object"] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles: nil];
    [alertView show];
}

@end

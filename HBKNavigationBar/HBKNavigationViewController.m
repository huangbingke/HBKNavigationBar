//
//  HBKNavigationViewController.m
//  HBKNavigationBar
//
//  Created by 黄冰珂 on 2017/10/31.
//  Copyright © 2017年 黄冰珂. All rights reserved.
//

#import "HBKNavigationViewController.h"

@interface HBKNavigationViewController ()

@end

@implementation HBKNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.navigationBar.hidden = YES;
    self.interactivePopGestureRecognizer.enabled = NO;
    
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

@end

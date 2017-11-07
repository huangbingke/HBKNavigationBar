//
//  HBKViewController.m
//  HBKNavigationBar
//
//  Created by 黄冰珂 on 2017/10/31.
//  Copyright © 2017年 黄冰珂. All rights reserved.
//

#import "HBKViewController.h"

#import "HBK_NavigationBar.h"

@interface HBKViewController ()

@end

@implementation HBKViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor greenColor];
    
    
    self.hbk_navgationBar = [HBK_NavigationBar HBK_setupNavigationBarWithTitle:@"啦啦啦" backAction:^{
        
    }];
    
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

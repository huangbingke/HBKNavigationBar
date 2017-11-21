//
//  SecondViewController.m
//  HBKNavigationBar
//
//  Created by 黄冰珂 on 2017/11/21.
//  Copyright © 2017年 黄冰珂. All rights reserved.
//

#import "SecondViewController.h"
#import "HBK_NavigationBar.h"
#pragma mark --------------------- 尺寸 ----------------------------
//屏幕的宽度
#define kScreenWidth            [[UIScreen mainScreen] bounds].size.width

//屏幕的高度
#define kScreenHeight           [[UIScreen mainScreen] bounds].size.height
//导航栏高度
#define kNavBarHeight           (kScreenHeight == 812 ? 88 : 64)

//tabBar高度
#define kTabBarHeight           (kScreenHeight == 812 ? 83 : 49)

@interface SecondViewController ()<UIWebViewDelegate>
@property (strong, nonatomic) UIWebView *myWebView;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.hbk_navgationBar = [HBK_NavigationBar HBK_setupNavigationBarWithTitle:@"AAAAAAAA" backAction:^{
        [self.navigationController popViewControllerAnimated:YES];
    }];
    
    self.myWebView = [[UIWebView alloc] initWithFrame:CGRectMake(0, kNavBarHeight, kScreenWidth, kScreenHeight-kNavBarHeight-kTabBarHeight+49)];
    self.myWebView.backgroundColor = [UIColor whiteColor];
    self.myWebView.delegate = self;
    
    [self.myWebView loadRequest:[NSURLRequest requestWithURL:[NSURL URLWithString:@"https://www.baidu.com"]]];
    
    
    
    [self.view addSubview:self.myWebView];
    
    
    
    
}
- (void)webViewDidStartLoad:(UIWebView *)webView {
    //    [self showProgressHUDWithTitle:@"加载中"];
//    [self.progressView startLoadingAnimation];
    [self.hbk_navgationBar startLoadingAnimation];
}
- (void)webViewDidFinishLoad:(UIWebView *)webView {
    //    [self hideProgressHUD];
    [self.hbk_navgationBar endLoadingAnimation];
//    [self.progressView endLoadingAnimation];
}
- (void)webView:(UIWebView *)webView didFailLoadWithError:(NSError *)error {
//    [MBProgressHUD showError:@"加载失败"];
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

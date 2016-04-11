//
//  XMGRecommendViewController.m
//  baisi
//
//  Created by ANDY on 16/4/12.
//  Copyright © 2016年 dinq. All rights reserved.
//

#import "XMGRecommendViewController.h"
#import <AFNetworking.h>
#import <SVProgressHUD.h>
@interface XMGRecommendViewController ()

@end

@implementation XMGRecommendViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    self.title=@"关注推荐";
    [SVProgressHUD setDefaultMaskType: SVProgressHUDMaskTypeBlack];
    [SVProgressHUD show];
    
    NSMutableDictionary* params=[[NSMutableDictionary alloc] init];
    params[@"a"]=@"category";
    params[@"c"]=@"subscribe";
    [[AFHTTPSessionManager manager] GET:@"http://api.budejie.com/api/api_open.php" parameters:params progress:^(NSProgress * _Nonnull downloadProgress) {
        //
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        //
        NSLog(@"%@",responseObject);
        [SVProgressHUD dismiss];
        //数据布局
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        //
                [SVProgressHUD showErrorWithStatus:@"加载失败"];
        [self.navigationController popViewControllerAnimated:YES];
        [SVProgressHUD dismiss];

    }];
    XMGBG;
    
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

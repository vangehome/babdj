//
//  XMGFriendTrendsViewController.m
//  baisi
//
//  Created by ANDY on 16/4/8.
//  Copyright © 2016年 dinq. All rights reserved.
//

#import "XMGFriendTrendsViewController.h"
#import "XMGRecommendViewController.h"
@implementation XMGFriendTrendsViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    self.navigationItem.title=@"我的关注";
    
    UIBarButtonItem* item=[UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" action:@selector(click) target:self];
    self.navigationItem.leftBarButtonItem=item;
        XMGBG;
   //nib
    
}
-(void)click{
    
    XMGRecommendViewController* vc=[[XMGRecommendViewController alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
    XMGLogFun;
}
@end

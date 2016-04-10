//
//  XMGFriendTrendsViewController.m
//  baisi
//
//  Created by ANDY on 16/4/8.
//  Copyright © 2016年 dinq. All rights reserved.
//

#import "XMGFriendTrendsViewController.h"

@implementation XMGFriendTrendsViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    self.navigationItem.title=@"我的关注";
    
    UIBarButtonItem* item=[UIBarButtonItem itemWithImage:@"friendsRecommentIcon" highImage:@"friendsRecommentIcon-click" action:@selector(click) target:self];
    self.navigationItem.leftBarButtonItem=item;
        XMGBG;
    XMGLogFun;
}
-(void)click{
    XMGLogFun;
}
@end

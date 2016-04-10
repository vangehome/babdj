//
//  XMGMEViewController.m
//  baisi
//
//  Created by ANDY on 16/4/8.
//  Copyright © 2016年 dinq. All rights reserved.
//

#import "XMGMEViewController.h"

@implementation XMGMEViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    self.navigationItem.title=@"我的";


    
    UIBarButtonItem* item1=[UIBarButtonItem itemWithImage:@"mine-setting-icon" highImage:@"mine-setting-icon-click" action:@selector(click) target:self];
    
    
    UIBarButtonItem* item2=[UIBarButtonItem itemWithImage:@"mine-moon-icon" highImage:@"mine-moon-icon-click" action:@selector(click2) target:self];

    self.navigationItem.rightBarButtonItems=@[
                                              item1,
                                              
                                              item2
                                              ];
     XMGLogFun;

        XMGBG;
  
        
}
-(void)click{
    
}
-(void)click2{
    
}
@end

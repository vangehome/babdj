//
//  XMGNavigationController.m
//  baisi
//
//  Created by ANDY on 16/4/10.
//  Copyright © 2016年 dinq. All rights reserved.
//

#import "XMGNavigationController.h"

@implementation XMGNavigationController
-(void)viewDidLoad{
    [super viewDidLoad];
    
    
    
      XMGLogFun;
    
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated{
    
    if (self.childViewControllers.count>0) {
        UIButton* but=[UIButton buttonWithType:UIButtonTypeCustom];
        [but setImage:[UIImage imageNamed:@"navigationButtonReturn" ] forState:UIControlStateNormal];
        [but setImage:[UIImage imageNamed:@"navigationButtonReturnClick" ] forState:UIControlStateHighlighted];
        [but setTitle:@"返回" forState:UIControlStateNormal];
        [but sizeToFit];
        
        //边距缩小
        but.contentEdgeInsets=UIEdgeInsetsMake(0, -10, 0, 0);
        but.contentHorizontalAlignment=UIControlContentHorizontalAlignmentLeft;
        [but setTitleColor:[UIColor blackColor] forState:UIControlStateNormal ];
        [but setTitleColor:XMGRGBCOLOR(233 ,0, 0) forState:UIControlStateHighlighted];
        [but addTarget:self action:@selector(popme) forControlEvents:UIControlEventTouchUpInside];
        UIBarButtonItem* item=[[UIBarButtonItem alloc] initWithCustomView:but];
        [viewController.navigationItem setLeftBarButtonItem :item];
        viewController.hidesBottomBarWhenPushed=YES;
    }

    [super pushViewController:viewController animated:animated];


}
-(void)popme{
    [self popToRootViewControllerAnimated:YES];
}


@end

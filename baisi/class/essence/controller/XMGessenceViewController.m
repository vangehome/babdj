//
//  XMGessenceViewController.m
//  baisi
//
//  Created by ANDY on 16/4/8.
//  Copyright © 2016年 dinq. All rights reserved.
//

#import "XMGessenceViewController.h"

@implementation XMGessenceViewController
-(void)viewDidLoad{
    [super viewDidLoad];
    //
    self.navigationItem.titleView=[[UIImageView alloc] initWithImage:[UIImage imageNamed:@"MainTitle"]];
    
    
    UIBarButtonItem* item= [UIBarButtonItem itemWithImage:@"MainTagSubIcon" highImage:@"MainTagSubIconClick" action:@selector(click) target:self];
    self.navigationItem.leftBarButtonItem=item;
     
     XMGBG;
    XMGLogFun;
}
-(void)click{
    
   
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
  
    
    UIViewController* vc=[[UIViewController alloc ] init];
    [self.navigationController pushViewController:vc animated:YES];
}

@end

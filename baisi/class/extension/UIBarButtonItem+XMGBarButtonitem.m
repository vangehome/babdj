//
//  UIBarButtonItem+XMGBarButtonitem.m
//  baisi
//
//  Created by ANDY on 16/4/10.
//  Copyright © 2016年 dinq. All rights reserved.
//

#import "UIBarButtonItem+XMGBarButtonitem.h"

@implementation UIBarButtonItem (XMGBarButtonitem)
+(instancetype)itemWithImage:(NSString *)image highImage:(NSString *)highImage action:(SEL)action target:(id)target{
    UIButton* button=[UIButton buttonWithType:UIButtonTypeCustom];
    [button setBackgroundImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    button.size=button.currentBackgroundImage.size;
        [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    return [[UIBarButtonItem alloc] initWithCustomView:button];
    

}
@end

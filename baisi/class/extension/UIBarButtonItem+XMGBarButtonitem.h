//
//  UIBarButtonItem+XMGBarButtonitem.h
//  baisi
//
//  Created by ANDY on 16/4/10.
//  Copyright © 2016年 dinq. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (XMGBarButtonitem)
+(instancetype)itemWithImage:(NSString*)image highImage:(NSString*)highImage action:(SEL)action target:(id)self;
@end

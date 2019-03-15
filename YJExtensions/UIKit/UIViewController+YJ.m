//
//  UIViewController+YJ.m
//  YJExtensionsDemo
//
//  Created by 刘亚军 on 2019/3/14.
//  Copyright © 2019 刘亚军. All rights reserved.
//

#import "UIViewController+YJ.h"
#import <objc/runtime.h>
static const void *YJBackButtonHandlerKey = &YJBackButtonHandlerKey;
@implementation UIViewController (YJ)
- (void)yj_backButtonTouched:(YJBackButtonHandler)backButtonHandler{
     objc_setAssociatedObject(self, YJBackButtonHandlerKey, backButtonHandler, OBJC_ASSOCIATION_COPY);
}
- (YJBackButtonHandler)yj_backButtonTouched{
    return objc_getAssociatedObject(self, YJBackButtonHandlerKey);
}
@end

@implementation UINavigationController (ShouldPopItem)
- (BOOL)navigationBar:(UINavigationBar *)navigationBar shouldPopItem:(UINavigationItem *)item {
    
    if([self.viewControllers count] < [navigationBar.items count]) {
        return YES;
    }
    
    UIViewController* vc = [self topViewController];
    YJBackButtonHandler handler = [vc yj_backButtonTouched];
    if (handler) {
        // Workaround for iOS7.1. Thanks to @boliva - http://stackoverflow.com/posts/comments/34452906
        
        for(UIView *subview in [navigationBar subviews]) {
            if(subview.alpha < 1.) {
                [UIView animateWithDuration:.25 animations:^{
                    subview.alpha = 1.;
                }];
            }
        }
        dispatch_async(dispatch_get_main_queue(), ^{
            handler(self);
        });
    }else{
        dispatch_async(dispatch_get_main_queue(), ^{
            [self popViewControllerAnimated:YES];
        });
    }
    
    return NO;
}
@end

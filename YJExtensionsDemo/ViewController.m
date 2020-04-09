//
//  ViewController.m
//  YJExtensionsDemo
//
//  Created by 刘亚军 on 2019/3/15.
//  Copyright © 2019 刘亚军. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+YJ.h"
#import "UIView+YJ.h"
#import "YJExtensions.h"
#import "YJEGumbo.h"
#import "YJEGumbo+Query.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *htmlString = @"<html> <head><meta charset=\"{CHARSET}\"><title></title></head><body><p style=\"font-weight: bold;\">hollo hhkooisud</p><p id=\"0\" class=\"s\rt\" timeinfo=\"[00:00:24.790]\" style=\"border: 2px solid rgba(37,205,245,1);border-radius: 4px;\">Our school is far away from the downtown. As a result </p><p id=\"1\" class=\"srt\" timeinfo=\"[00:00:24.790]\" style=\"border: 2px solid rgba(37,205,245,1);\">it is a good place for students to study. We won’t be disturbed by the crowded people and the noise. For me </p><p id=\"2\" class=\"srt\" timeinfo=\"[00:00:24.790]\" style=\"border: 2px solid rgba(37,205,245,1);\">I like the scenery in the campus, trees are around, especially when I look out of the window in the break time. </p><script> var node = document.getElementById(\"0\"); node.style.border = \"2px solid red\";</script></body></html>";
   YJEGumboDocument *document = [[YJEGumboDocument alloc] initWithHTMLString:htmlString];
    ;
   YJEGumboElement *element = document.Query(@".srt").firstObject;
    
    
//    UIImageView *imageView = [[UIImageView alloc] initWithRoundingRectImageView];
//    [imageView setFrame:CGRectMake(130, 80, 150, 150)];
//    [self.view addSubview:imageView];
//    
//    
//    UIImageView *imageViewSecond = [[UIImageView alloc] initWithCornerRadiusAdvance:20.f rectCornerType:UIRectCornerBottomLeft | UIRectCornerTopRight];
//    [imageViewSecond setFrame:CGRectMake(130, 280, 150, 150)];
//    [self.view addSubview:imageViewSecond];
//    
//    
//    UIImageView *imageViewThird = [[UIImageView alloc] initWithFrame:CGRectMake(130, 480, 150, 150)];
//    [imageViewThird yj_cornerRadiusAdvance:20.f rectCornerType:UIRectCornerBottomRight | UIRectCornerTopLeft];
//    [imageViewThird yj_attachBorderWidth:5.f color:[UIColor blackColor]];
//    [self.view addSubview:imageViewThird];
//    
//    
//#pragma mark - setImage anytime
//    imageView.image = [UIImage imageNamed:@"mac_dog"];
//    imageViewSecond.image = [UIImage imageNamed:@"mac_dog"];
//    imageViewThird.image = [UIImage imageNamed:@"mac_dog"];
    
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeSystem];
    button.backgroundColor = [UIColor lightGrayColor];
    button.frame = CGRectMake(30.0, self.view.bounds.size.height / 2, self.view.bounds.size.width - 30.0 * 2, 50.0);
    [button addTarget:self action:@selector(buttonClicked:) forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:@(0).stringValue forState:UIControlStateNormal];
    button.exclusiveTouch = YES;
    [self.view addSubview:button];
    
    //! 设置按钮的点击响应间隔时间
//    button.yj_eventInterval = 2.0;
}


#pragma mark - Action functions

- (void)buttonClicked:(UIButton *)sender {
    
    NSInteger titleInteger = sender.currentTitle.integerValue;
    [sender setTitle:@(++titleInteger).stringValue forState:UIControlStateNormal];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
    NSLog(@"是否平板:%li",[self.view yj_isIPAD]);
    NSLog(@"是否X:%li",[self.view yj_isIPhoneX]);
}

@end

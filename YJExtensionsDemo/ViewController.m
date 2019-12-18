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

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
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

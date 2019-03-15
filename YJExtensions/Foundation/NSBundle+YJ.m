//
//  NSBundle+YJ.m
//  YJExtensionsDemo
//
//  Created by 刘亚军 on 2019/3/14.
//  Copyright © 2019 刘亚军. All rights reserved.
//

#import "NSBundle+YJ.h"
@interface YJExtModel : NSObject
@end
@implementation YJExtModel
@end

@implementation NSBundle (YJ)

+ (instancetype)yj_bundleWithName:(NSString *)name{
    static NSBundle *bundle = nil;
    if (!bundle) {
        // 这里不使用mainBundle是为了适配pod 1.x和0.x
        bundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:[YJExtModel class]] pathForResource:name ofType:@"bundle"]];
    }
    return bundle;
}

+ (NSString *)yj_bundlePathWithName:(NSString *)name atBundle:(NSString *)bundle{
    return [[[NSBundle yj_bundleWithName:bundle] resourcePath] stringByAppendingPathComponent:name];
}
@end

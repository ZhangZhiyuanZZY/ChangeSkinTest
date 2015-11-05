//
//  ZYSkinTool.m
//  换肤
//
//  Created by 章芝源 on 15/11/6.
//  Copyright © 2015年 ZZY. All rights reserved.
//

#import "ZYSkinTool.h"
//类方法中不能存储, 对象,不能 self.xx  所以创建一个私有的全局变量
static NSString *_skin;
@implementation ZYSkinTool

///默认程序运行,但是没有进行任何操作的时候,  默认显示蓝色
/**
 *  类加载的时候 就会调用  调用一次
 */
+ (void)initialize
{
    _skin = [[NSUserDefaults standardUserDefaults]objectForKey:@"skin"];
    if (_skin == nil) {
        _skin = @"blue";
    }
}

/**
 *  类方法
 */
+ (void)saveSkin:(NSString *)skin
{
    _skin = skin;
    //skin
    //保存
    [[NSUserDefaults standardUserDefaults]setObject:skin forKey:@"skin1"];
    [[NSUserDefaults standardUserDefaults]synchronize];
}

///加载皮肤图片, 从偏好设置中取
+(UIImage *)loadImage:(NSString *)imageName
{
    NSString *pathName = [NSString stringWithFormat:@"skin/%@/%@",_skin,imageName];
    UIImage *image = [UIImage imageNamed:pathName];
    return image;
}

///加载颜色, 这个颜色应该和皮肤的颜色一样
+(UIColor *)loadColor:(NSString *)key
{
    //从plist中取出颜色
    NSString *plistName = [NSString stringWithFormat:@"skin/%@/color.plist", _skin];
    
    NSString *path = [[NSBundle mainBundle]pathForResource:plistName ofType:nil];
    
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    
    NSString *result = dict[key];
    
    ///将拿出来的字符串分隔成数组
    NSArray *allColor = [result componentsSeparatedByString:@","];
    
    CGFloat r = [allColor[0] integerValue]/255.0;
    CGFloat g = [allColor[1] integerValue]/255.0;
    CGFloat b = [allColor[2] integerValue]/255.0;
    
    return [UIColor colorWithRed:r green:g blue:b alpha:1.0];
}




@end

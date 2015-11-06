//
//  ZYTwoViewController.m
//  换肤
//
//  Created by 章芝源 on 15/11/6.
//  Copyright © 2015年 ZZY. All rights reserved.
//

#import "ZYTwoViewController.h"
#import "ZYSkinTool.h"
@interface ZYTwoViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *imageViews;

@end

@implementation ZYTwoViewController

///viewDidload只会被加载一次
- (void)viewDidLoad {
    [super viewDidLoad];
    //    self.imageView.image = [ZYSkinTool loadImage:@"rect"];
    
    
}

///这个方法, 每次 view将要出现的时候, 都会加载
- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    self.imageViews.image = [ZYSkinTool loadImage:@"rect"];
    
    
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

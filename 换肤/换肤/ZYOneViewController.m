//
//  ZYOneViewController.m
//  换肤
//
//  Created by 章芝源 on 15/11/6.
//  Copyright © 2015年 ZZY. All rights reserved.
//

#import "ZYOneViewController.h"
#import "ZYSkinTool.h"
@interface ZYOneViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *labelll;

@end

@implementation ZYOneViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    //设置
    [self setSkin];
    
    
}


- (void)setSkin{
    self.imageView.image = [ZYSkinTool loadImage:@"heart"];
    self.labelll.backgroundColor = [ZYSkinTool loadColor:@"one_mylabel_bg"];
}

@end

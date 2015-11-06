//
//  ViewController.m
//  换肤
//
//  Created by 章芝源 on 15/11/6.
//  Copyright © 2015年 ZZY. All rights reserved.
//

#import "ViewController.h"
#import "ZYSkinTool.h"
@interface ViewController ()


@property (weak, nonatomic) IBOutlet UIImageView *face;
@property (weak, nonatomic) IBOutlet UIImageView *heart;
@property (weak, nonatomic) IBOutlet UIImageView *rect;

@end

@implementation ViewController


- (IBAction)skinSegment:(UISegmentedControl *)sender {
    
    [ZYSkinTool saveSkin:[sender titleForSegmentAtIndex:sender.selectedSegmentIndex]];
    [self setSkin];
}




- (void)viewDidLoad {
    [super viewDidLoad];
    //设置皮肤
    [self setSkin];
}

- (void)setSkin
{
    self.face.image = [ZYSkinTool loadImage:@"face"];
    self.heart.image = [ZYSkinTool loadImage:@"heart"];
    self.rect.image = [ZYSkinTool loadImage:@"rect"];
}

@end

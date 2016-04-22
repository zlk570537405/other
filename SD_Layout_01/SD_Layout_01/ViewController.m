//
//  ViewController.m
//  SD_Layout_01
//
//  Created by Mac on 16/4/13.
//  Copyright © 2016年 zlk. All rights reserved.
//

#import "ViewController.h"
#import "UIView+SDAutoLayout.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    UIView *view1 = [[UIView alloc]init];
    view1.backgroundColor = [UIColor darkGrayColor];
    self.view1 = view1;
    
    UIView *view2 = [[UIView alloc]init];
    view2.backgroundColor = [UIColor redColor];
    self.view2 = view2;
    
    UIView *view3 = [[UIView alloc]init];
    view3.backgroundColor = [UIColor yellowColor];
    self.view3 = view3;
    
    UIView *view4 = [[UIView alloc]init];
    view4.backgroundColor = [UIColor blueColor];
    self.view4 = view4;
    
    [self.view sd_addSubviews:@[view1,view2,view3,view4]];
    
    
    
    
    UILabel *textL = [[UILabel alloc]init];
    textL.text = @"细雨飘清风荡细雨飘清风荡细雨飘清风荡细雨飘清风荡细雨飘清风荡细雨飘清风荡细雨飘清风荡细雨飘清风荡细雨飘清风荡";
    textL.textColor = [UIColor whiteColor];
    
    UIImageView *im = [[UIImageView alloc]init];
    im.backgroundColor = [UIColor magentaColor];
    
    [self.view1 sd_addSubviews:@[textL,im]];
    
    im.sd_layout
    .leftSpaceToView(self.view1,10)
    .topSpaceToView(self.view1,10)
    .heightIs(100)
    .widthIs(100);
    textL.sd_layout
    .leftSpaceToView(im,10)
    .rightSpaceToView(self.view1,10)
    .topEqualToView(im)
    .autoHeightRatio(0);
    
    self.view1.sd_layout
    .leftSpaceToView(self.view,10)
    .topSpaceToView(self.view,80)
    .rightSpaceToView(self.view,10);
    
    [self.view1 setupAutoHeightWithBottomView:im bottomMargin:10];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

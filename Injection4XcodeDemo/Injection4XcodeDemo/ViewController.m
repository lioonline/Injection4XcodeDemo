//
//  ViewController.m
//  Injection4XcodeDemo
//
//  Created by Cocoa Lee on 16/3/16.
//  Copyright © 2016年 Lee. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
   
    self.view.backgroundColor = [UIColor colorWithRed:240/255.0 green:240/255.0 blue:240/255.0 alpha:1];
    
    UIView *bgView            = [UIView new];
    [self.view addSubview:bgView];
    bgView.frame              = CGRectMake(20, 20, CGRectGetWidth(self.view.bounds)-40, CGRectGetHeight(self.view.bounds)-40);
    bgView.backgroundColor    = [UIColor whiteColor];
    bgView.layer.cornerRadius = 4;
    bgView.clipsToBounds      = YES;
    
    
    UIImageView *imageView = [[UIImageView alloc] init];
    imageView.frame        = CGRectMake(0, 0, CGRectGetWidth(bgView.bounds), CGRectGetWidth(bgView.bounds));
    imageView.image        = [UIImage imageNamed:@"img.jpg"];
    [bgView addSubview:imageView];
    
    UILabel *label = [UILabel new];
    label.text = @"墨香雅韵醉无痕,夜聆离殇梦人生;\n\n\n万籁俱寂执笔意,浅月若寒残忆存";
    label.frame = CGRectMake(0, CGRectGetHeight(imageView.bounds), CGRectGetWidth(bgView.bounds), bgView.bounds.size.height-imageView.bounds.size.height);
    label.textAlignment = NSTextAlignmentCenter;
    label.numberOfLines = 0;
    [bgView addSubview:label];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  截屏
//
//  Created by niuwan on 16/7/24.
//  Copyright © 2016年 niuwan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //开启上下文
    UIGraphicsBeginImageContextWithOptions(self.view.bounds.size, NO, 0);
    
    //获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    //渲染到上下文
    [self.view.layer renderInContext:ctx];
    
    //生成图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    NSData *data = UIImagePNGRepresentation(image);
    
    [data writeToFile:@"/Users/niuwan/Desktop/view.png" atomically:YES];

    
    
}

@end

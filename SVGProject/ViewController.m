//
//  ViewController.m
//  SVGProject
//
//  Created by 栗子 on 2018/9/6.
//  Copyright © 2018年 http://www.cnblogs.com/Lrx-lizi/    https://github.com/lrxlizi/     https://blog.csdn.net/qq_33608748. All rights reserved.
//

#import "ViewController.h"

#import "UIImage+SVGTool.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIImageView *imageIV = [[UIImageView alloc]initWithFrame:CGRectMake(50, 200, 50,55)];
    [self.view addSubview:imageIV];
    UIImage *image = [UIImage svgImgNamed:@"icon_light.svg" size:CGSizeMake(50,55)];
    imageIV.image = image;
    
    
    
    UIImageView *colors = [[UIImageView alloc]initWithFrame:CGRectMake(150, 200, 50, 50)];
    [self.view addSubview:colors];
    colors.image = [UIImage svgImageNamed:@"icon_light.svg" size:CGSizeMake(80,80) imageColor:[UIColor greenColor]];
    
    
    
    CGFloat width = 50;
    CGFloat hight = 55;
    CGFloat margin = 15;
    NSArray *colorsArr = @[[UIColor redColor],[UIColor orangeColor],[UIColor yellowColor],[UIColor greenColor],[UIColor cyanColor],[UIColor purpleColor]];
    for (int i=0; i< colorsArr.count; i++) {
        
        UIImageView *iv = [[UIImageView alloc]initWithFrame:CGRectMake(margin+(width +margin)*i, 300, width, hight)];
        [self.view addSubview:iv];
        iv.image = [UIImage svgImageNamed:@"icon_light.svg" size:CGSizeMake(80,80) imageColor:colorsArr[i]];

        
    }
   
 
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

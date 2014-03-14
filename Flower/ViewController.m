//
//  ViewController.m
//  Flower
//
//  Created by el1ven on 14-3-14.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@end

@implementation ViewController

@synthesize colorChoice;//实现设置器方法
@synthesize chosenColor;
@synthesize flowerView;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

//当点击按钮的时候
- (IBAction)getFlower:(id)sender {
    NSInteger colorNum;//记录点击的是哪个segment view
    colorNum = colorChoice.selectedSegmentIndex;//获取颜色的index
    
    NSString *color;
    NSString *colorVal;//用变量来记录颜色
    
    switch (colorNum) {
        case 0:
            color = @"Red";
            colorVal = @"red";
            break;
        case 1:
            color = @"Blue";
            colorVal = @"blue";
            break;
        case 2:
            color = @"Yellow";
            colorVal = @"yellow";
            break;
        case 3:
            color = @"Green";
            colorVal = @"green";
            break;
            
        default:
            break;
    }
    
    chosenColor.text = color;//中间label显示选择的颜色信息
    
    NSString *outputHTML =[[NSString alloc]initWithFormat:@"<body style='margin: 0px; padding: 0px'><img height='160' src='http://www.floraphotographs.com/showrandom.php?color=%@'></body>",colorVal];//所要获取图片的网址，用colorVal传递参数
    
    [flowerView loadHTMLString:outputHTML baseURL:nil];
    //flowerView根据网址获取图片
}
@end

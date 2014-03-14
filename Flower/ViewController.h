//
//  ViewController.h
//  Flower
//
//  Created by el1ven on 14-3-14.
//  Copyright (c) 2014年 el1ven. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutlet UISegmentedControl *colorChoice;
//界面上方segment颜色选择的对象
@property (strong, nonatomic) IBOutlet UILabel *chosenColor;
//中间label中所要显示的上方segment已经选择的颜色
@property (strong, nonatomic) IBOutlet UIWebView *flowerView;
//界面下方用于显示图片的对象

- (IBAction)getFlower:(id)sender;
//点击按钮触发事件
@end

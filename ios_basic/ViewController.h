//
//  ViewController.h
//  ios_basic
//
//  Created by wubo on 2017/3/26.
//  Copyright © 2017年 wubo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UIAlertViewDelegate, UITextFieldDelegate, UIScrollViewDelegate>
{
    //定时器
    NSTimer* _timerView;
    //开关
    UISwitch* _mySwitch;
    //进度条,调整视频进度
    UIProgressView* _myProgress;
    //滑动条，调整音量大小
    UISlider* _slider;
    //按照某个数值阶段性调整数据大小
    UIStepper* _stepper;
    //分栏控制器
    UISegmentedControl* _segmentedControl;
    
    //警告对话框
    UIAlertView* _alert;
    //等待提示，一般下载，加载比较大的文件时显示此控件
    UIActivityIndicatorView* _activityIndicator;
    //用户文本输入区域，只能输入单行文本
    UITextField* _userName;
    //定义滚动视图
    UIScrollView* _scrollView;
    //定义图像视图
    UIImageView* _imageView;
}
@property(retain,nonatomic) NSTimer* timerView;
@property(retain,nonatomic) UISwitch* mySwitch;
@property(retain,nonatomic) UIProgressView* myProgress;
@property(retain,nonatomic) UISlider* slider;
@property(retain,nonatomic) UIStepper* stepper;
@property(retain,nonatomic) UISegmentedControl* segmentedControl;
@property(retain,nonatomic) UIAlertView* alert;
@property(retain,nonatomic) UIActivityIndicatorView* activityIndicator;
@property(retain,nonatomic) UITextField* userName;
@property(retain,nonatomic) UIScrollView* scrollView;

@end


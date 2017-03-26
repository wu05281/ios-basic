//
//  ViewController.h
//  ios_basic
//
//  Created by wubo on 2017/3/26.
//  Copyright © 2017年 wubo. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    //定时器
    NSTimer* _timerView;
    //开关
    UISwitch* _mySwitch;
    //进度条,调整视频进度
    UIProgressView* _myProgress;
    //滑动条，调整音量大小
    UISlider* _slider;
}
@property(retain,nonatomic) NSTimer* timerView;
@property(retain,nonatomic) UISwitch* mySwitch;
@property(retain,nonatomic) UIProgressView* myProgress;
@property(retain,nonatomic)UISlider* slider;

@end


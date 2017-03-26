//
//  ViewController.m
//  ios_basic
//
//  Created by wubo on 2017/3/26.
//  Copyright © 2017年 wubo. All rights reserved.
//

#import "ViewController.h"
#import "FirstViewController.h"

@interface ViewController ()

@end

@implementation ViewController

//当屏幕被点击是调用此函数
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //创建转向的视图控制器
    FirstViewController* myFirstVc = [[FirstViewController alloc]init];
    //显示一个新的视图控制器
    //参数1：新对象，参数2:是否使用动画切换效果，参数3:切换结束后，功能调用
    [self presentViewController:myFirstVc animated:YES completion:nil];
}

//第一次被加载时使用，用来初始化资源来用
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"这是我的第一个ios项目");
    //self.view.backgroundColor = [UIColor grayColor];
    //[self creatUI];
    //[self createRectBtn];
    //[self createImageBtn];
    //[self createUIView];
    [self viewCengji];
    // Do any additional setup after loading the view, typically from a nib.
}

//当视图即将展示时，调用此函数
//参数：表示是否用动画切换后显示
- (void)viewWillAppear:(BOOL)animated {
    
}

//当视图已经显示成功的时候，调用此函数
//参数：表示是否用动画切换显示
- (void)viewDidAppear:(BOOL)animated {
    
}

//当视图即将消失时，调用此函数（视图仍然展示在屏幕上）
//参数：表示是否用动画切换后消失
- (void)viewWillDisappear:(BOOL)animated {
    
}

//当前视图已经消失在屏幕上，调用此函数

- (void)viewDidDisappear:(BOOL)animated{
    
}


- (void) viewCengji{
    UIView* view01 = [[UIView alloc]init];
    view01.frame = CGRectMake(100, 100, 150, 150);
    view01.backgroundColor = [UIColor blueColor];
    
    UIView* view02 = [[UIView alloc]init];
    view02.frame = CGRectMake(150, 150, 150, 150);
    view02.backgroundColor = [UIColor orangeColor];
    
    UIView* view03 = [[UIView alloc]init];
    view03.frame = CGRectMake(200, 200, 150, 150);
    view03.backgroundColor = [UIColor grayColor];
    
    [self.view addSubview:view01];
    [self.view addSubview:view02];
    [self.view addSubview:view03];
    
    //将某个视图调整到前面显示
    [self.view bringSubviewToFront:view01];
    
    //将某个视图调整到后面显示
    [self.view sendSubviewToBack:view02];
    
    //从最底层（下标为0）开始。
    UIView* viewF = self.view.subviews[0];
    if(viewF == view02){
        NSLog(@"相等");
    }
    
}


- (void) createUIView{
    UIView* view = [[UIView alloc]init];
    view.frame = CGRectMake(100, 500, 160, 40);
    view.backgroundColor = [UIColor blueColor];
    [self.view addSubview:view];
    //隐藏视图 yes 隐藏
    view.hidden = NO;
    //透明度 1，不透明；0透明；
    view.alpha=0.5;
    //将自己从父视图删除
    [view removeFromSuperview ];
}


- (void)createRectBtn{
    //创建圆角矩形button
    UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    //设置按钮坐标
    btn.frame = CGRectMake(100, 200, 160, 40);
    //设置按钮内容
    [btn setTitle:@"按钮" forState:UIControlStateNormal];
    //选中状态时按钮内容
    [btn setTitle:@"按下" forState:UIControlStateHighlighted];
    //设置背景色
    btn.backgroundColor = [UIColor blueColor];
    //设置按钮内容文字颜色
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    //设置按钮文字风格颜色，优先级没有titleColor高
    [btn setTintColor:[UIColor whiteColor]];
    
    //设置字体大小
    btn.titleLabel.font = [UIFont systemFontOfSize:15];
    btn.tag=101;
    //添加事件，self为当前视图控制器
    [btn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)pressBtn:(UIButton*) btn{
    if (btn.tag == 101) {
        NSLog(@"文字按钮被按下了。");
    } else {
        NSLog(@"图片按钮被按下了。");
    }
}

- (void)createImageBtn{
    //创建自定义类型button
    UIButton* imgBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    imgBtn.frame = CGRectMake(100, 300, 100, 100);
    [imgBtn setImage:[UIImage imageNamed:@"btn01"] forState:UIControlStateNormal];
    [imgBtn setImage:[UIImage imageNamed:@"btn02"] forState:UIControlStateHighlighted];
    imgBtn.tag=102;
    [imgBtn addTarget:self action:@selector(pressBtn:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:imgBtn];
    
}

- (void)creatUI{
    UILabel* fist = [[UILabel alloc]init];
    //内容
    fist.text =@"你好，世界！";
    //背景颜色（透明色）
    fist.backgroundColor = [UIColor clearColor];
    //坐标
    fist.frame = CGRectMake(100, 100, 200, 40);
    //文字大小
    fist.font = [UIFont systemFontOfSize:24];
    //对其方式
    fist.textAlignment = NSTextAlignmentCenter;
    //设置自动换行，label行数，默认为1行。 设置为0的话，会自动计算，自适应展示
    fist.numberOfLines = 2;
    [self.view addSubview:fist];
}

//当系统内存过低时，调用此函数，释放内存


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

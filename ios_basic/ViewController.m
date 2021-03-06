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

@synthesize timerView = _timerView;
@synthesize mySwitch = _mySwitch;
@synthesize myProgress = _myProgress;
@synthesize slider = _slider;
@synthesize stepper = _stepper;
@synthesize segmentedControl = _segmentedControl;
@synthesize alert = _alert;
@synthesize activityIndicator =_activityIndicator;
@synthesize userName = _userName;
@synthesize scrollView = _scrollView;

//当屏幕被点击是调用此函数
//- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //创建转向的视图控制器
//    FirstViewController* myFirstVc = [[FirstViewController alloc]init];
    //显示一个新的视图控制器
    //参数1：新对象，参数2:是否使用动画切换效果，参数3:切换结束后，功能调用
//    [self presentViewController:myFirstVc animated:YES completion:nil];
//}

//第一次被加载时使用，用来初始化资源来用
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"这是我的第一个ios项目");
//    self.view.backgroundColor = [UIColor grayColor];
//    [self creatUI];
//    [self createRectBtn];
//    [self createImageBtn];
//    [self createSwitch];
//    [self createProgress];
//    [self createSlider];
//    [self createStepper];
//    [self createSegControl];
//    [self createAlertAndActiv];
//    [self createTextField];
//    [self createUIView];
//    [self viewCengji];
//    [self creatScrollView];
//    [self createScrollViewSenior];
//    [self createImageView];
    [self createImageView4Pinch];
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
    btn.frame = CGRectMake(100, 100, 160, 40);
    //设置按钮内容
    [btn setTitle:@"启动定时器" forState:UIControlStateNormal];
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
        FirstViewController* myFirstVc = [[FirstViewController alloc]init];
        [self presentViewController:myFirstVc animated:YES completion:nil];
        _timerView = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(updateTimer) userInfo:nil repeats:YES];
        NSLog(@"文字按钮被按下了。");
    } else {
        [_timerView invalidate];
        NSLog(@"图片按钮被按下了。");
    }
}

- (void) updateTimer{
    NSLog(@"启动了一个定时器");
}

- (void)createImageBtn{
    //创建自定义类型button
    UIButton* imgBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    imgBtn.frame = CGRectMake(100, 150, 100, 100);
    [imgBtn setImage:[UIImage imageNamed:@"0"] forState:UIControlStateNormal];
    [imgBtn setImage:[UIImage imageNamed:@"1"] forState:UIControlStateHighlighted];
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
    //对齐方式
    fist.textAlignment = NSTextAlignmentCenter;
    //设置自动换行，label行数，默认为1行。 设置为0的话，会自动计算，自适应展示
    fist.numberOfLines = 2;
    [self.view addSubview:fist];
}

- (void) createSwitch{
    _mySwitch = [[UISwitch alloc]init];
    _mySwitch.frame = CGRectMake(100, 250, 30, 30);
    //_mySwitch.on = YES;
    [_mySwitch setOn:YES animated:YES];
    //设置开启时的背景颜色
    [_mySwitch setOnTintColor:[UIColor orangeColor]];
    //设置园按钮的颜色
    //[_mySwitch setThumbTintColor:[UIColor orangeColor]];
    [_mySwitch addTarget:self action:@selector(valueChanged:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_mySwitch];
}

- (void) valueChanged:(UISwitch*) sw{
    if (sw.on) {
        NSLog(@"开关被打开");
    }else{
        NSLog(@"开关被关闭");
    }
}

- (void) createProgress{
    _myProgress = [[UIProgressView alloc]init];
    _myProgress.frame = CGRectMake(10, 300, 300, 0);
    [_myProgress setTintColor:[UIColor orangeColor]];
    //设置未完成部分的颜色
    [_myProgress setTrackTintColor:[UIColor purpleColor]];
    [_myProgress setProgress:0.8];
    _myProgress.progressViewStyle = UIProgressViewStyleDefault;
    [self.view addSubview:_myProgress];
}

- (void) createSlider{
    _slider = [[UISlider alloc]init];
    _slider.frame = CGRectMake(10, 320, 300, 30);
    //设置滑动条的最大最小值，可以设置为负值
    _slider.maximumValue = 100;
    _slider.minimumValue = 0;
    _slider.value = 30;
    //左侧滑条颜色
    _slider.minimumTrackTintColor = [UIColor orangeColor];
    //滑块的颜色
    _slider.thumbTintColor = [UIColor orangeColor];
    [_slider addTarget:self action:@selector(pressSlider:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slider];
}

-(void) pressSlider:(UISlider*) sl{
    NSLog(@"slider value is %f", sl.value);
}

- (void) createStepper{
    _stepper = [[UIStepper alloc]init];
    _stepper.frame = CGRectMake(120, 360, 300, 30);
    _stepper.tintColor = [UIColor orangeColor];
    _stepper.minimumValue = 0;
    _stepper.maximumValue = 100;
    _stepper.value = 10;
    //设置步进值
    _stepper.stepValue = 5;
    //是否响应重复事件操作：按住+，—的时候自动持续加减。为no的时候放开+-一次处理一次。
    _stepper.autorepeat = YES;
    //是否将步进结果通过事件函数响应出来：autorepeat设为yes的时候，才有效；yes的时候按住，反复调用事件函数。
    _stepper.continuous = YES;
    [_stepper addTarget:self action:@selector(slideStepper) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_stepper];
}

- (void) slideStepper{
    NSLog(@"步进器");
}

- (void) createSegControl{
    _segmentedControl = [[UISegmentedControl alloc]init];
    _segmentedControl.frame = CGRectMake(10, 400, 300, 30);
    _segmentedControl.tintColor = [UIColor orangeColor];
    [_segmentedControl insertSegmentWithTitle:@"0元" atIndex:0 animated:NO];
    [_segmentedControl insertSegmentWithTitle:@"5元" atIndex:1 animated:NO];
    [_segmentedControl insertSegmentWithTitle:@"25元" atIndex:2 animated:NO];
    _segmentedControl.selectedSegmentIndex = 1;
    [_segmentedControl addTarget:self action:@selector(segChanged) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_segmentedControl];
}

- (void) segChanged{
    NSLog(@" %ld", _segmentedControl.selectedSegmentIndex);
}


- (void) createAlertAndActiv{
    for(int i=0; i<2;i++) {
        UIButton* btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake(10 + 90*i, 450, 80, 40);
        if (i == 0){
            [btn setTitle:@"警告提示" forState:UIControlStateNormal];
        } else {
            [btn setTitle:@"等待对话框" forState:UIControlStateNormal];
        }
        btn.tag = 101 + i;
        [btn addTarget:self action:@selector(alertBtn:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:btn];
    }
}

- (void) alertBtn:(UIButton*) btn{
    if (btn.tag == 101) {
        _alert = [[UIAlertView alloc]initWithTitle:@"警告" message:@"确认保存" delegate:self cancelButtonTitle:@"确认" otherButtonTitles:@"取消", @"联系客服", nil];
        [_alert show];
    } else {
        _activityIndicator = [[UIActivityIndicatorView alloc]initWithFrame:CGRectMake(100, 300, 80, 80)];
       //设定提示风格
        _activityIndicator.activityIndicatorViewStyle = UIActivityIndicatorViewStyleWhiteLarge;
        [self.view addSubview:_activityIndicator];
        [_activityIndicator startAnimating];
        //停止等待指示器
        //[_activityIndicator stopAnimating];
    }
}

//UIAlertView的协议函数
//当点击对话框按钮时，调用此函数,参数1：按钮对象本身；参数2按钮索引
- (void) alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    
}
//对话框即将消失
- (void) alertView:(UIAlertView *)alertView willDismissWithButtonIndex:(NSInteger)buttonIndex{
    
}
//对话框已经消失
- (void) alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    
}

- (void) createTextField{
    _userName = [[UITextField alloc]init];
    _userName.frame = CGRectMake(10, 30, 300, 40);
    _userName.font = [UIFont systemFontOfSize : 15];
    //_userName.text = @"用户名";
    //设置字体颜色
    self.userName.textColor = [UIColor blackColor];
    self.userName.borderStyle = UITextBorderStyleRoundedRect;
    //设置虚拟键盘模式
    self.userName.keyboardType = UIKeyboardTypeAlphabet;
    //浅灰色提示输入文字
    self.userName.placeholder = @"请输入用户名。。。";
    //是否作为密码输入
    self.userName.secureTextEntry = NO;
    [self.view addSubview:_userName];
    //设置代理对象
    self.userName.delegate = self;
    
}

//点击空白处回收键盘,画布重新定位等
- (void) touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //[self.userName resignFirstResponder];
    //让视图滚动到指定位置，带动画效果。
    //[_scrollView scrollRectToVisible:CGRectMake(0, 0, 300, 400) animated:YES];
    //获取点击次数
    UITouch* touch = [touches anyObject];
    if (touch.tapCount == 1) {
        NSLog(@"单次点击！");
    }
    
}
//特殊情况下调用，玩游戏时候来电话时候调用，用来紧急处理。
-(void) touchesCancelled:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    
}
//UITextField的协议函数
- (void) textFieldDidBeginEditing:(UITextField *)textField {
    NSLog(@"开始输入。。。");
}
- (void) textFieldDidEndEditing:(UITextField *)textField {
    NSLog(@"结束输入。。。");
}

//是否可以进行输入,返回（默认返回yes）yes可以输入，no的话不能输入
- (BOOL) textFieldShouldBeginEditing:(UITextField *)textField{
    return YES;
}

//是否可以结束输入，默认为yes可以结束输入键盘回收，比如8位密码场景
- (BOOL) textFieldShouldEndEditing:(UITextField *)textField{
    return YES;
}


//创建滚动视图(左右)
- (void) creatScrollView{
    UIScrollView* sv = [[UIScrollView alloc]init];
    sv.frame = CGRectMake(0, 0, 320, 576);
    //滚动停留的位置，设置为no的话可能停在图片中间任意位置。
    sv.pagingEnabled = YES;
    sv.scrollEnabled = YES;
    sv.contentSize =CGSizeMake(320*5, 576);
    //设置边缘弹动效果
    sv.bounces = YES;
    //设置横向弹动效果
    sv.alwaysBounceHorizontal = YES;
    //设置纵向弹动效果
    sv.alwaysBounceVertical = YES;
    //设置横向滚动条显示
    sv.showsHorizontalScrollIndicator = YES;
    //设置纵向滚动条显示
    sv.showsVerticalScrollIndicator = YES;
    //
    sv.backgroundColor = [UIColor orangeColor];
    
    for (int i = 0; i <2; i++) {
        NSString* imName = [NSString stringWithFormat:@"d%d", i+1];
        NSLog(@"%@",imName);
        UIImage* im = [UIImage imageNamed:imName];
        UIImageView* imv = [[UIImageView alloc]initWithImage:im];
        imv.frame = CGRectMake(320*i, 0, 320, 576);
        [sv addSubview:imv];
        
    }
    
    [self.view addSubview:sv];
    
}
//创建高级滚动视图
- (void)createScrollViewSenior {
    _scrollView = [[UIScrollView alloc]init];
    _scrollView.frame = CGRectMake(10, 50, 300, 400);
    //取消弹动效果
    _scrollView.bounces = NO;
    //是否允许通过点击屏幕来滚动视图，yes可以接受触屏事件.
    _scrollView.userInteractionEnabled = YES;
    //设置画布大小
    _scrollView.contentSize = CGSizeMake(300, 400*2);
    for (int i = 0; i <2; i++) {
        NSString* imName = [NSString stringWithFormat:@"d%d", i+1];
        NSLog(@"%@",imName);
        UIImage* im = [UIImage imageNamed:imName];
        UIImageView* imv = [[UIImageView alloc]initWithImage:im];
        //设置每一屏在画布中的位置
        imv.frame = CGRectMake(0, 400*i, 300, 400);
        [_scrollView addSubview:imv];
        //
        
    }
    //取消按页滚动,no可以停留在任意位置
    _scrollView.pagingEnabled = NO;
    //
    _scrollView.contentOffset = CGPointMake(0, 0);
    [self.view addSubview:_scrollView];
    //将当前视图控制器作为_scrollView的代理对象。
    _scrollView.delegate = self;
    
}
//当视图发送坐标移动时候调用此函数
- (void) scrollViewDidScroll:(UIScrollView *)scrollView{
    NSLog(@"y = %f", scrollView.contentOffset.y);
}
//视图结束拖动时被调用，手指松开
- (void) scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate{
    
}
//视图开始被手指拖动时被调用
- (void) scrollViewWillBeginDragging:(UIScrollView *)scrollView{
    
}

//即将开始减速
- (void) scrollViewWillBeginDecelerating:(UIScrollView *)scrollView{
    
}


- (void) createImageView{
    UIImage *image = [UIImage imageNamed:@"d1"];
    _imageView = [[UIImageView alloc] init];
    _imageView.image = image;
    _imageView.frame = CGRectMake(30, 50, 200, 300);
    [self.view addSubview:_imageView];
    _imageView.userInteractionEnabled =YES;
    //创建点击手势对象，用来识别点击手势事件
    UITapGestureRecognizer* uitap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapOneAct:)];
    //几次点击时触发，默认为1，点击一次触发
    uitap.numberOfTapsRequired = 1;
    //几个手指点击触发，默认为1，一个手指点击触发
    uitap.numberOfTouchesRequired = 1;
    //将点击事件添加至视图中，视图即可响应事件
    [_imageView addGestureRecognizer:uitap];
    
    
    //创建点击手势对象，用来识别点击手势事件
    UITapGestureRecognizer* uitapTwo = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tapTwoAct:)];
    //几次点击时触发，默认为2，点击2次触发
    uitapTwo.numberOfTapsRequired = 2;
    //几个手指点击触发，默认为1，一个手指点击触发
    uitapTwo.numberOfTouchesRequired = 1;
    //将点击事件添加至视图中，视图即可响应事件
    [_imageView addGestureRecognizer:uitapTwo];
    //当单击事件遇到双击事件时，单击操作失效。
    [uitap requireGestureRecognizerToFail:uitapTwo];
}

- (void) tapOneAct:(UITapGestureRecognizer*)tap{
    NSLog(@"单击操作");
    //获取手势对应的视图
    UIImageView* view = (UIImageView*)tap.view;
    //设置开启动画
    [UIView beginAnimations:nil context:nil];
    //动画时间
    [UIView setAnimationDuration:2];
    
    view.frame = CGRectMake(0, 0, 320, 568);
    //结束动画
    [UIView commitAnimations];
    
}

- (void) tapTwoAct:(UITapGestureRecognizer*)tap{
    NSLog(@"双击操作");
    //获取手势对应的视图
    UIImageView* view = (UIImageView*)tap.view;
    //设置开启动画
    [UIView beginAnimations:nil context:nil];
    //动画时间
    [UIView setAnimationDuration:2];
    
    view.frame = CGRectMake(30, 50, 200, 300);
    //结束动画
    [UIView commitAnimations];
    
}

- (void) createImageView4Pinch{
    UIImage *image = [UIImage imageNamed:@"d1"];
    _imageView = [[UIImageView alloc] init];
    _imageView.image = image;
    _imageView.frame = CGRectMake(30, 50, 200, 300);
    //开启交互功能
    _imageView.userInteractionEnabled =YES;
    [self.view addSubview:_imageView];
    //创建缩放手势
    _pinchGes = [[UIPinchGestureRecognizer alloc]initWithTarget:self action:@selector(pinchAct:)];
    //创建旋转手势
    _rotationGes = [[UIRotationGestureRecognizer alloc]initWithTarget:self action:@selector(rotaAct:)];
    //将手势添加至视图中
    [_imageView addGestureRecognizer:_pinchGes];
    [_imageView addGestureRecognizer:_rotationGes];
    
    _pinchGes.delegate = self;
    _rotationGes.delegate = self;
}

- (void) pinchAct:(UIPinchGestureRecognizer*) pinch {
    UIImageView* iv = (UIImageView*)pinch.view;
    //对图像视图对象进行矩阵变换计算并赋值
    //CGAffineTransformScale：通过缩放方式 在原来的矩阵基础上，对x，y两个方向进行变换，产生新的矩阵。
    iv.transform = CGAffineTransformScale(iv.transform, pinch.scale, pinch.scale);
    //缩放值归位，否则会产生累加
    pinch.scale = 1;
}

- (void) rotaAct:(UIRotationGestureRecognizer*)rota{
    UIImageView* iv = (UIImageView*)rota.view;
    iv.transform = CGAffineTransformRotate(iv.transform, rota.rotation);
    //旋转角度清零
    rota.rotation = 0;
}

//是否可以同时响应两个手势
- (BOOL) gestureRecognizer:(UIGestureRecognizer *)gestureRecognizer shouldRecognizeSimultaneouslyWithGestureRecognizer:(UIGestureRecognizer *)otherGestureRecognizer{
    return YES;
}
//当系统内存过低时，调用此函数，释放内存
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end

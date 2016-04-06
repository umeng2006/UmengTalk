//
//  ViewController.m
//  UmengTalk
//
//  Created by 张 晓军 on 15/11/22.
//  Copyright © 2015年 LeBerry Network Technology. All rights reserved.
//

#import "ViewController.h"


#define WINSIZE [[UIScreen mainScreen] bounds]
#define iphone4 (CGSizeEqualToSize(CGSizeMake(320, 480), [UIScreen mainScreen].bounds.size))
#define iphone5 (CGSizeEqualToSize(CGSizeMake(320, 568), [UIScreen mainScreen].bounds.size))
#define iphone6 (CGSizeEqualToSize(CGSizeMake(375, 667), [UIScreen mainScreen].bounds.size))
#define iphone6plus (CGSizeEqualToSize(CGSizeMake(414, 736), [UIScreen mainScreen].bounds.size))

@interface ViewController (){
    float _multipleOfIphoneWidth;
    float _multipleofIphoneHeight;
}

@end

@implementation ViewController
//-->动画效果开始时设置的时间，如果finish如果没设置时间，那么它的时间是默认值。并不是和animateWithDuration动画完成时间平分的
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self makeDurationOfLogin];

}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    _multipleofIphoneHeight = 1.0;
    _multipleOfIphoneWidth = 1.0;
    if (iphone6) {
        _multipleOfIphoneWidth = 375 / 320.0;
        _multipleofIphoneHeight = 667 / 568.0;
    }
    if (iphone6plus) {
        _multipleOfIphoneWidth = 414 / 320.0;
        _multipleofIphoneHeight = 736 / 568.0;
    }

    
    self.view.backgroundColor  = [UIColor yellowColor];
    
    
}

- (CGRect )makeFrame :(CGRect )frame {
    CGRect makeFrame = CGRectMake((WINSIZE.size.width - frame.size.width*_multipleOfIphoneWidth)/2.0,frame.origin.y*_multipleofIphoneHeight, frame.size.width*_multipleOfIphoneWidth, frame.size.height*_multipleofIphoneHeight);
    return makeFrame;
}

- (CGRect )makeTextFiledFrame :(CGRect)frame :(CGRect)fatherFrame {
    CGRect makeFrame = CGRectMake(( fatherFrame.size.width- frame.size.width*_multipleOfIphoneWidth)/2.0,frame.origin.y*_multipleofIphoneHeight, frame.size.width*_multipleOfIphoneWidth, frame.size.height*_multipleofIphoneHeight);
    return makeFrame;

}

- (CGRect )makeLightLineFrame :(CGRect)frame {
    CGRect makeFrame = CGRectMake((WINSIZE.size.width-180)/2.0*_multipleOfIphoneWidth,frame.origin.y*_multipleofIphoneHeight, frame.size.width*_multipleOfIphoneWidth, frame.size.height*_multipleofIphoneHeight);
    return makeFrame;
}

- (CGRect )makeRigthLineFrame :(CGRect)frame {
    CGRect makeFrame = CGRectMake((WINSIZE.size.width+90)/2.0*_multipleOfIphoneWidth,frame.origin.y*_multipleofIphoneHeight, frame.size.width*_multipleOfIphoneWidth, frame.size.height*_multipleofIphoneHeight);
    return makeFrame;
}

- (void)makeDurationOfLogin {
    UIView *lineLightView = [[UIView alloc] init];
    lineLightView.backgroundColor = [UIColor grayColor];
    lineLightView.frame = CGRectMake((WINSIZE.size.width-180)/2.0, 0, 2, 0);
    lineLightView.frame = [self makeLightLineFrame:lineLightView.frame];
    [self.view addSubview:lineLightView];
    
    UIView *lineRoghtView = [[UIView alloc] init];
    lineRoghtView.backgroundColor = [UIColor grayColor];
    lineRoghtView.frame = CGRectMake(0, 0, 2, 0);
    lineRoghtView.frame = [self makeRigthLineFrame:lineRoghtView.frame];
    [self.view addSubview:lineRoghtView];
    
    UIImageView *loginView = [[UIImageView alloc] init];
    loginView.backgroundColor = [UIColor grayColor];
    loginView.frame = CGRectMake(WINSIZE.size.width/2.0-100, -150, 200, 150);
    loginView.frame = [self makeFrame:loginView.frame];
    [UIView animateWithDuration:2 animations:^{
        loginView.frame = CGRectMake(WINSIZE.size.width/2.0-100, 200, 200, 150);
        loginView.frame = [self makeFrame:loginView.frame];
        lineLightView.frame = CGRectMake((WINSIZE.size.width-180)/2.0, 0, 2, 200);
        lineLightView.frame = [self makeLightLineFrame:lineLightView.frame];
        lineRoghtView.frame = CGRectMake(0, 0, 2, 200);
        lineRoghtView.frame = [self makeRigthLineFrame:lineRoghtView.frame];
    } completion:^(BOOL finished) {
        [UIView animateWithDuration:0.6 animations:^{
            loginView.frame = CGRectMake(WINSIZE.size.width/2.0-100, 140, 200, 150);
            loginView.frame = [self makeFrame:loginView.frame];
            lineLightView.frame = CGRectMake((WINSIZE.size.width-180)/2.0, 0, 2, 140);
            lineLightView.frame = [self makeLightLineFrame:lineLightView.frame];
            lineRoghtView.frame = CGRectMake(0, 0, 2, 140);
            lineRoghtView.frame = [self makeRigthLineFrame:lineRoghtView.frame];
        } completion:^(BOOL finished) {
            [UIView animateWithDuration:1.2 animations:^{
                loginView.frame = CGRectMake(WINSIZE.size.width/2.0-100, 160, 200, 150);
                loginView.frame = [self makeFrame:loginView.frame];
                lineLightView.frame = CGRectMake((WINSIZE.size.width-180)/2.0, 0, 2, 160);
                lineLightView.frame = [self makeLightLineFrame:lineLightView.frame];
                lineRoghtView.frame = CGRectMake(0, 0, 2, 160);
                lineRoghtView.frame = [self makeRigthLineFrame:lineRoghtView.frame];
            } completion:^(BOOL finished) {
                [UIView animateWithDuration:1.2 animations:^{
                    loginView.frame = CGRectMake(WINSIZE.size.width/2.0-100, 150, 200, 150);
                    loginView.frame = [self makeFrame:loginView.frame];
                    lineLightView.frame = CGRectMake((WINSIZE.size.width-180)/2.0, 0, 2, 150);
                    lineLightView.frame = [self makeLightLineFrame:lineLightView.frame];
                    lineRoghtView.frame = CGRectMake(0, 0, 2, 150);
                    lineRoghtView.frame = [self makeRigthLineFrame:lineRoghtView.frame];
                }];
                
            }];
        }];
    }];
    [self.view addSubview:loginView];
    [self creatLoginUI:loginView]; //创建登陆UI把它加到loginView上
    
}

- (void)creatLoginUI :(UIImageView *)loginView {
    UITextField *userNameTextField = [[UITextField alloc] init];
    userNameTextField.backgroundColor = [UIColor whiteColor];
    userNameTextField.frame = CGRectMake(0, 20, 180, 30);
    userNameTextField.frame = [self makeTextFiledFrame:userNameTextField.frame :loginView.frame];
    userNameTextField.placeholder = @"请输入账号";
    [loginView addSubview:userNameTextField];
    UITextField *userPassWordTextFiled = [[UITextField alloc] init];
    userPassWordTextFiled.backgroundColor = [UIColor whiteColor];
    userPassWordTextFiled.frame = CGRectMake(0, 70, 180, 30);
    userPassWordTextFiled.frame = [self makeTextFiledFrame:userPassWordTextFiled.frame :loginView.frame];
    userPassWordTextFiled.placeholder = @"请输入密码";
    [loginView addSubview:userPassWordTextFiled];
    UIButton *loginBtton = [[UIButton alloc] init];
    loginBtton.backgroundColor = [UIColor whiteColor];
    loginBtton.frame = CGRectMake(0, 115, 100, 26);
    loginBtton.frame = [self makeTextFiledFrame:loginBtton.frame :loginView.frame];
    [loginBtton setTitle:@"登录" forState:UIControlStateNormal];
    [loginBtton setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    [loginView addSubview:loginBtton];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

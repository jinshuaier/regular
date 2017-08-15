//
//  ViewController.m
//  正则表达式匹配
//
//  Created by nyhz on 16/1/7.
//  Copyright © 2016年 myshao. All rights reserved.
//

#import "ViewController.h"
#import "BSUtils.h"
#import "mytextVC.h"
#define  screenW [UIScreen mainScreen].bounds.size.width
@interface ViewController (){
    UITextField *_textView;
    UIButton *_btn;
    UILabel *_QQGroup;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _QQGroup=[[UILabel alloc] init];
    _QQGroup.frame=CGRectMake(50, 60, screenW, 30);
    _QQGroup.text=@"iOS技术交流群463357684";
    [self.view addSubview:_QQGroup];
    _textView=[[UITextField alloc] init];
    _textView.borderStyle=UITextBorderStyleLine;
    _textView.placeholder=@"请输入6到20之间的数字或者字母";
    _textView.frame=CGRectMake(50, 100,screenW-100 , 30);
    [self.view addSubview:_textView];
    _btn=[UIButton buttonWithType:UIButtonTypeCustom];
    _btn.frame=CGRectMake(50, 150, 80, 40);
    [_btn setTitle:@"gotoVC" forState:UIControlStateNormal];
    [_btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [self.view addSubview:_btn];
    _btn.backgroundColor=[UIColor redColor];
    [_btn addTarget:self action:@selector(gotoVC) forControlEvents:UIControlEventTouchUpInside];
}
-(void)gotoVC{
    NSLog(@"hh");
#pragma mark 判断输入数字或者字母6 到20之间
    if (![BSUtils checkTelNumber:_textView.text]) {
        
        return;
    }
    
    mytextVC *VC=[[mytextVC alloc] init];
    [self presentViewController:VC animated:YES completion:nil];
//    [self.navigationController pushViewController:VC animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  NumberPadDemo
//
//  Created by fly on 16/3/28.
//  Copyright © 2016年 Fly. All rights reserved.
//

#import "ViewController.h"
#import "FNNumberPadTextField.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    FNNumberPadTextField *textField1 = [[FNNumberPadTextField alloc] initWithFrame:CGRectMake(20, 40, 300, 36)];
    textField1.borderStyle = UITextBorderStyleRoundedRect;
    textField1.placeholder = @"正常类型的TextField";
    [self.view addSubview:textField1];
    
    FNNumberPadTextField *textField2 = [[FNNumberPadTextField alloc] initWithFrame:CGRectMake(20, CGRectGetMaxY(textField1.frame) + 10, 300, 36)];
    textField2.limitType = FNTextFieldLimitTypePureUInt;
    textField2.borderStyle = UITextBorderStyleRoundedRect;
    textField2.placeholder = @"只接收正整形的TextField";
    [self.view addSubview:textField2];
    
    FNNumberPadTextField *textField3 = [[FNNumberPadTextField alloc] initWithFrame:CGRectMake(20, CGRectGetMaxY(textField2.frame) + 10, 300, 36)];
    textField3.limitType = FNTextFieldLimitTypePureFloat;

    textField3.borderStyle = UITextBorderStyleRoundedRect;
    textField3.placeholder = @"可接收小数点的TextField";
    [self.view addSubview:textField3];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

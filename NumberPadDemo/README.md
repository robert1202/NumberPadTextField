# NumberPadTextField
输入数字限制的textField 
主要是为了在一些需要输入数字的地方，由于一些第三方输入法，可以切换输入状态
目前支持
1.默认的输入方式
2.纯无符整形
3.浮点类型

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

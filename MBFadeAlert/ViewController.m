//
//  ViewController.m
//  MBFadeAlert
//
//  Created by 李翰阳 on 15/3/26.
//  Copyright (c) 2015年 李翰阳. All rights reserved.
//

#import "ViewController.h"
#import "MBFadeAlertView.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (nonatomic, retain) IBOutlet UIButton *btn;
@end

@implementation ViewController

- (void)viewDidLoad {
    
    [super viewDidLoad];
    
    [self.textView becomeFirstResponder];
    
    self.textView.text = @"输点什么来弹窗吧";

}
- (IBAction)BtnClick:(id)sender {
    
    [self.textView resignFirstResponder];
    
    MBFadeAlertView *alert = [[MBFadeAlertView alloc]init];
    
    /*
     
    //这里可以改参数
     
    alert.textFont           =   [UIFont systemFontOfSize:13.0f];
    alert.fadeWidth          =   200;
    alert.fadeBGColor        =   [UIColor colorWithRed:94.0/255.0f green:105.0/255.0f blue:107.0/255.0f alpha:1.0f];
    alert.titleColor         =   [UIColor whiteColor];
    alert.textOffWidth       =   18;
    alert.textOffHeight      =   8;
    alert.textBottomHeight   =   120;
    alert.fadeTime           =   1.5;
    alert.FadeBGAlpha        =   0.8;
     
     */
    
    [alert showAlertWith:self.textView.text];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

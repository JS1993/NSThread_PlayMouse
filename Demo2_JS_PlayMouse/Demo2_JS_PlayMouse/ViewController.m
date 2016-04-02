//
//  ViewController.m
//  Demo2_JS_PlayMouse
//
//  Created by  江苏 on 16/3/17.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import "ViewController.h"
#import "JSMouse.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [NSThread detachNewThreadSelector:@selector(addMouse) toTarget:self withObject:nil];
}
-(void)addMouse{
    while (YES) {
        [NSThread sleepForTimeInterval:.5];
       JSMouse* mouse=[[JSMouse alloc]initWithFrame:CGRectMake(arc4random()%280+20, arc4random()%500+30, 20, 20)];
        mouse.delegate=self;
        [self performSelectorOnMainThread:@selector(showMouse:) withObject:mouse waitUntilDone:NO];
    }
}
-(void)showMouse:(UIButton*)mouse{
    [self.view addSubview:mouse];
    [mouse setNeedsLayout];//显示本控件的子控件
//[mouse setNeedsDisplay]; //刷新显示控件
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)seccuss{
    int count=self.deadMouse.text.intValue;
    self.deadMouse.text=[NSString stringWithFormat:@"%d",count+1];
}
-(void)failed{
    int count=self.escapeMouse.text.intValue;
    self.escapeMouse.text=[NSString stringWithFormat:@"%d",count+1];
}
@end

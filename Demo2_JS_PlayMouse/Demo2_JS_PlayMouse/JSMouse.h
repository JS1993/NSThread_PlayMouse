//
//  JSMouse.h
//  Demo2_JS_PlayMouse
//
//  Created by  江苏 on 16/3/17.
//  Copyright © 2016年 jiangsu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ViewController.h"
@interface JSMouse : UIButton
@property(nonatomic,strong)ViewController* delegate;
@end
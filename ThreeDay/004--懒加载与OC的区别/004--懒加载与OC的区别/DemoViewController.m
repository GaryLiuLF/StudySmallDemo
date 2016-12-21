//
//  DemoViewController.m
//  004--懒加载与OC的区别
//
//  Created by gary.liu on 16/12/21.
//  Copyright © 2016年 gary.liu. All rights reserved.
//

#import "DemoViewController.h"

@interface DemoViewController ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation DemoViewController


- (UILabel *)label
{
    // 如果label == nil 就会创建
    if (_label == nil) {
        _label = [[UILabel alloc]init];
        _label.text = @"hello";
        [_label sizeToFit];
        _label.center = self.view.center;
    }
    
    return _label;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 调用懒加载属性时，需要指定self.xxx
    [self.view addSubview:self.label];
    
    // 释放label
    _label = nil;
    
    // 会再次调用懒加载的代码
    NSLog(@"%@",self.label);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
    // 接收到内存警告，可以释放视图
    // On iOS 6.0 it will no longer clear the view by default。
    // iOS6.0之后，不会再清理视图，视图会始终保留
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end

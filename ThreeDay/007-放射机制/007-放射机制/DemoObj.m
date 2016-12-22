//
//  DemoObj.m
//  007-放射机制
//
//  Created by gary.liu on 16/12/22.
//  Copyright © 2016年 gary.liu. All rights reserved.
//

#import "DemoObj.h"

@implementation DemoObj

- (instancetype)init
{
    if (self = [super init]) {
        
        NSString *str = @"hello";
        
        // 在以前的xcode中是方法，oc中如果有方法， 没有参数，有返回值， 都可以直接用 .
        // 和Swift 中的计算性属性类似， 用“ . ” 便于阅读
        NSLog(@"%zd",str.length);
        
        // copy 就是方法
        NSString *str1 = str.copy;
        
    }
    
    return self
}

@end

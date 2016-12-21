//
//  DemoLabel.swift
//  懒加载
//
//  Created by gary.liu on 16/12/21.
//  Copyright © 2016年 gary.liu. All rights reserved.
//

import UIKit

class DemoLabel: UILabel {

    // 重写构造函数
    // XIB 不会调用， 纯代码专用的
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    // initWithCoder -> 使用XIB/StoryBoard 开发的入口
    // 提示：所有UIView及子类在开发时，一旦重写了构造函数
    // 必须要实现initWithCoder函数，以保证提供了两个通道
    // 方法的添加Xcode会有自动提示的
    required init?(coder aDecoder: NSCoder) {
        
        // fatalError:如果XIB开发，会直接崩溃
        // 禁止XIB/StoryBoard使用本类
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI() -> () {
        print("正在创建空间")
    }
}


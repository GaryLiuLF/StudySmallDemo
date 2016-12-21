//
//  ViewController.swift
//  懒加载
//
//  Created by gary.liu on 16/12/21.
//  Copyright © 2016年 gary.liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 初始化并分配空间label，  会提前创建
    // 移动端开发，‘延时加载’--减少内存消耗
    // MARK: - 懒加载 lazy
    // 1. 能够延时加载
    // 2. 最大的好处--》 解除解包的烦恼！
//    var label = DemoLabel()
    lazy var label:DemoLabel = DemoLabel()
    // 懒加载本质上是一个闭包
    // 完整写法如下：供参考，日常开发不建议这么写
    /**
     {} 包装代码
     () 执行代码
     
     日常开发：
     1. 闭包中的智能提示不好
     2. 闭包中如果出现self. 还需要注意循环引用！
     */
    
    lazy var label1 = { ()->DemoLabel in
        let l = DemoLabel()
        
        // 其中可以设置label的属性。。
        
        return l
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setupUI()
    }
    
    private func setupUI() -> () {
       
        // MARK: - 添加到视图
        // 1. ! 解包，为了参与计算，addSubView用subViews数据记录数据，数值中你允许植入nil
        // 2. ? 可选解包，调用方法，如果为nil，不调用方法，但是不能参与计算
        
        view.addSubview(label)
        label.text = "hello"
        label.sizeToFit()
        label.center = view.center
        
    }

}


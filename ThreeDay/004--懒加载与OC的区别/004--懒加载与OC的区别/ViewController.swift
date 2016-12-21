//
//  ViewController.swift
//  004--懒加载与OC的区别
//
//  Created by gary.liu on 16/12/21.
//  Copyright © 2016年 gary.liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // 注意：和OC 不同！
    // 一旦label被设置为nil， 懒加载也不会再次执行
    // 懒加载的代码只会在第一次调用的时候，执行闭包，然后闭包的结果保存在label的属性中
    private lazy var label:UILabel? = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 会调用懒加载创建label
        print(label)
        
        label?.text = "hello"
        label?.sizeToFit()
        label?.center = view.center
        view.addSubview(label!)
        
        // 释放label
        label = nil
        
        print(label)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  005--计算性属性
//
//  Created by gary.liu on 16/12/21.
//  Copyright © 2016年 gary.liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private lazy var p = Person()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 只要调用过一次，懒加载后面的闭包就再也不会执行了
        // p.title3 = nil
        
        // let p = Person()
        p.name = "你飞哥"
        print(p.name ?? "")
        
        print(p.title)
        
        // Cannot assign to property: 'title' is a get-only property
        // 不能给get-only属性设置值
        // 不允许修改只读属性
        // p.title = "牛逼呀"
        
        print(p.title2)
        
        print(p.title3 ?? "")
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        p.name = "你大飞哥"
        print(p.title2)
        print(p.title3 ?? "")
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


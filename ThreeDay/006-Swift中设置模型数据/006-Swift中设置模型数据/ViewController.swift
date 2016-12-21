//
//  ViewController.swift
//  006-Swift中设置模型数据
//
//  Created by gary.liu on 16/12/21.
//  Copyright © 2016年 gary.liu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p = Person()
        p.name = "你飞哥"
        
        let label = DemoLabel(frame: CGRect(x: 50, y: 50, width: 100, height: 100))
        view.addSubview(label)
        label.person = p
        
    }
}


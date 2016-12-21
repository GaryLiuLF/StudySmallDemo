//
//  DemoLabel.swift
//  006-Swift中设置模型数据
//
//  Created by gary.liu on 16/12/21.
//  Copyright © 2016年 gary.liu. All rights reserved.
//

import UIKit

class DemoLabel: UILabel {

    // 模型 -> 给视图设置模型，由视图自己根据模型的数据，确定显示内容
    var person:Person? {
        // *** 就是替代OC中重写setter方法
        // 区别：再也不需要考虑 _成员变量 = 值
        // OC中如果是copy属性，应该 _成员变量 = 值.copy
        didSet {
            // 此时 name 属性已经有值，可以直接使用设置UI内容
            text = person?.name
        }
    }

}

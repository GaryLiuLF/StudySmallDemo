//
//  Person.swift
//  005--计算性属性
//
//  Created by gary.liu on 16/12/21.
//  Copyright © 2016年 gary.liu. All rights reserved.
//

import UIKit

class Person: NSObject {

    // MARK: - getter & setter 仅用演示，日常开发不用
    private var _name:String?
    
    // swift中很少写getter与setter
    var name:String? {
        set {
            // 使用_成员变记录
            _name = newValue
        }
        
        get {
            // 返回 _成员变量
            return _name
        }
    }
    
    // OC中定义属性的时候，有一个readonly -》 只重写getter方法
    var title:String {
        // 只重写了getter方法，没有重写setter
        get {
            return "Mr." + (name ?? "")
        }
    }
    
    // 只读属性的简写-直接return
    // 又称为‘计算性’属性 -》 本身不保存内容，都是通过计算获得结果
    // 类似于一个函数
    // 1. 没有参数
    // 2. 一定有返回值
    var title2:String {
        
        print("计算 name \(name)")
        
        return "Mr.+++" + (name ?? "")
    }
    
    // 懒加载的title， 本质是一个闭包
    // 懒加载会在第一次访问的时候，执行，闭包执行结束后，会把结果保存在title3中
    // 后续调用，直接返回title3保存的内容
    // 懒加载的属性胡分配空间存储值！
    lazy var title3:String? = {
       
        return "lazy" + (self.name ?? "")
        
    }()
    
}

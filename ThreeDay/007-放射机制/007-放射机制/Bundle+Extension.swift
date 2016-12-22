//
//  Bundle+Extension.swift
//  007-放射机制
//
//  Created by gary.liu on 16/12/22.
//  Copyright © 2016年 gary.liu. All rights reserved.
//

import Foundation

extension Bundle {
    
    // 返回命名空间字符串
//    func namespace() -> String {
//        return Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
//        return infoDictionary?["CFBundleName"] as? String ?? ""
//    }
    
    // 计算性属性类似于函数，没有参数，有返回值
    var namespace:String {
        return infoDictionary?["CFBundleName"] as? String ?? ""
    }
    
}

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
    func namespace() -> String {
        return Bundle.main.infoDictionary?["CFBundleName"] as? String ?? ""
    }
}

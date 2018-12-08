//
//  NSObject+.swift
//
//
//  Created by okada on 2018/01/05.
//  Copyright © 2018年 okada. All rights reserved.
//

import Foundation

// クラス名を取得する。
// Objective-CのNSStringFromClassに相当する
extension NSObject {
    
    static var name: String {
        return String(describing: self)
    }
    
    var name: String {
        return type(of: self).name
    }
}

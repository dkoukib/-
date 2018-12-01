//
//  UserDefaultManager.swift
//  ColorApp
//
//  Created by 毎床　公喜 on 2018/12/01.
//  Copyright © 2018年 TomosukeOkada. All rights reserved.
//

import Foundation

final class UserDefaulManager {
    
    static private let colorDataArrayKey = "colorDataArray"
    
    static func saveColorData(_ data: ColorData) throws {
        var array = UserDefaults.standard.array(forKey: self.colorDataArrayKey) ?? []
        
        do {
            let encodeData = try JSONEncoder().encode(data)
            array.append(encodeData)
        }
       
        
        UserDefaults.standard.set(array, forKey: colorDataArrayKey)
        UserDefaults.standard.synchronize()
    }
}

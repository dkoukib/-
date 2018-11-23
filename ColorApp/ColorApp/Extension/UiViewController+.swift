//
//  UiViewController+.swift
//  ColorApp
//
//  Created by 毎床　公喜 on 2018/10/21.
//  Copyright © 2018年 TomosukeOkada. All rights reserved.
//

import UIKit

extension UIViewController {
    
    static func instance() -> UIViewController {
        let classname = String(describing: self)
        return UIStoryboard(name: classname, bundle: nil).instantiateInitialViewController()!
    }
}

//
//  UIView+.swift
//  ColorApp
//
//  Created by Tomosuke Okada on 2018/12/08.
//  Copyright © 2018 TomosukeOkada. All rights reserved.
//

import UIKit

extension UIView {
    
    static var nib: UINib {
        let name = String(describing: self)
        class dummyClass {}
        let bundle = Bundle(for: type(of: dummyClass()))
        return UINib(nibName: name, bundle: bundle)
    }
    
    var nib: UINib {
        return type(of: self).nib
    }
}

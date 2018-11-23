//
//  PickerContract.swift
//  ColorApp
//
//  Created by 毎床　公喜 on 2018/10/21.
//  Copyright © 2018年 TomosukeOkada. All rights reserved.
//

import Foundation

protocol PickerViewInterface: class {
    
    var presenter: PickerPresentation! { get set }
}

protocol PickerPresentation: class {
    
    var view: PickerViewInterface? { get set }
    var model: PickerInteractor! { get set }
}

protocol PickerInteractor: class {
    
}

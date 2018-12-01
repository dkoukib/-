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
    
    func presentMessage(_ message: String)
}

protocol PickerPresentation: class {
    
    var view: PickerViewInterface? { get set }
    var model: PickerInteractor! { get set }
    
    func willSaveColor(red: Float, green: Float, blue: Float, alpha: Float)
}

protocol PickerInteractor: class {
    
    var output: PickerInteractorOutput? { get set }
    
    func saveColor(_ data: ColorData)
}

protocol PickerInteractorOutput: class {
    func succeedSaveColor()
    func failedSaveColor()
}

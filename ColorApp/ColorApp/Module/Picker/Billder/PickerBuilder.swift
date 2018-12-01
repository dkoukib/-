//
//  PickerBuilder.swift
//  ColorApp
//
//  Created by 毎床　公喜 on 2018/11/23.
//  Copyright © 2018年 TomosukeOkada. All rights reserved.
//

import UIKit

final class PickerBuilder {
    
    static func build() -> UIViewController {
        let view = PickerViewController.instance() as! PickerViewController
        let presenter = PickerPresentor()
        let model = PickerModel()
        
        view.presenter = presenter
        
        presenter.view = view
        presenter.model = model
        
        model.output = presenter
        
        return view
    }
    

}

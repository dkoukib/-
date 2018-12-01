//
//  PickerModel.swift
//  ColorApp
//
//  Created by 毎床　公喜 on 2018/10/21.
//  Copyright © 2018年 TomosukeOkada. All rights reserved.
//

import Foundation

final class PickerModel: PickerInteractor {
    
    var output: PickerInteractorOutput?
    
    func saveColor(_ data: ColorData) {
        do{
            try UserDefaulManager.saveColorData(data)
            self.output?.succeedSaveColor()
        } catch {
            self.output?.failedSaveColor()
        }
    }
}

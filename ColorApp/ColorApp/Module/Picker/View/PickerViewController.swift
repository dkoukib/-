//
//  PickerViewController.swift
//  ColorApp
//
//  Created by 毎床　公喜 on 2018/10/21.
//  Copyright © 2018年 TomosukeOkada. All rights reserved.
//

import UIKit

final class PickerViewController: UIViewController, PickerViewInterface {

    var presenter: PickerPresentation!
    
    @IBOutlet private weak var colorView: UIView!

    @IBOutlet private weak var redSlider: UISlider!

    @IBOutlet private weak var blueSlider: UISlider!
    
    @IBOutlet private weak var greenSlider: UISlider!
    
    @IBOutlet private weak var alphaSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @IBAction private func didChangeSlider(_ sender: Any) {
        self.changeColorView()
    }
    
    private func changeColorView() {
        let color = UIColor(red: CGFloat(self.redSlider.value/255),
                            green: CGFloat(self.greenSlider.value/255),
                            blue: CGFloat(self.blueSlider.value/255),
                            alpha: CGFloat(self.alphaSlider.value/100))
        self.colorView.backgroundColor = color
    }
    
    @IBAction private func didTapSaveButton(_ sender: Any) {
        self.presenter.willSaveColor(red: self.redSlider.value,
                                     green: self.greenSlider.value,
                                     blue: self.blueSlider.value,
                                     alpha: self.alphaSlider.value)
    }
    
    func presentMessage(_ message: String) {
        self.showAlert(message: message)
    }
}

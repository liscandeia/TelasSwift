//
//  ButtonDefault.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-25 on 08/12/23.
//

import Foundation
import UIKit

class ButtonDefault:UIButton {
    init(button: String, buttonColor: UIColor){
        super.init(frame: .zero)
        initButtonDefault(button: button, buttonColor: buttonColor)
    }
    private func initButtonDefault (button: String, buttonColor: UIColor){
            self.backgroundColor = buttonColor;
            self.setTitle(button, for: .normal);
            self.layer.cornerRadius = 12;
            self.translatesAutoresizingMaskIntoConstraints = false
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//
//  blueScreenView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-25 on 08/12/23.
//

import Foundation
import UIKit


class BlueScreenView: UIView {
        override init(frame: CGRect) {
            super.init(frame: frame)
            backgroundColor = .customBackgroundColorBlue
            setupVisualElements()
        }
    //MARK: -  Clouseres
     var onGreenScreenTap: (() -> Void)?
    //MARK: - Propriets
    let greenButton = ButtonDefault(button: "Ir para a tela verde", buttonColor: .customBackgroundColorGreen)
    
        func setupVisualElements(){
            self.addSubview(greenButton)
            greenButton.addTarget(self, action: #selector(greenScreenTap), for: .touchUpInside)

            //MARK: - Init
            NSLayoutConstraint.activate([
            greenButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 500),
            greenButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            greenButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            greenButton.heightAnchor.constraint(equalToConstant: 60)
            ])
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        
    }
    @objc
    private func greenScreenTap(){
        onGreenScreenTap?()
    }

}

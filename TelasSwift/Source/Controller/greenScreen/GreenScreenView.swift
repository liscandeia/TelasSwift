//
//  greenScreenView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-25 on 08/12/23.
//

import Foundation
import UIKit


class GreenScreenView: UIView {
        override init(frame: CGRect) {
            super.init(frame: frame)
            backgroundColor = .customBackgroundColorGreen
            setupVisualElements()
        }
    //MARK: -  Clouseres
     var onBlueScreenTap: (() -> Void)?
     var onRedScreenTap: (() -> Void)?
    //MARK: - Propriets
    let redButton = ButtonDefault(button: "Ir para a tela vermelha", buttonColor: .customBackgroundColorRed)
    let blueButton = ButtonDefault(button: "Voltar para a tela azul", buttonColor: .customBackgroundColorBlue)

    
        func setupVisualElements(){
            self.addSubview(redButton)
            self.addSubview(blueButton)
            redButton.addTarget(self, action: #selector(redScreenTap), for: .touchUpInside)
            blueButton.addTarget(self, action: #selector(blueScreenTap), for: .touchUpInside)

            //MARK: - Init
            NSLayoutConstraint.activate([
            redButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 500),
            redButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            redButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            redButton.heightAnchor.constraint(equalToConstant: 60),
            blueButton.topAnchor.constraint(equalTo: redButton.bottomAnchor, constant: 50),
            blueButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            blueButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            blueButton.heightAnchor.constraint(equalToConstant: 60)
            ])
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        
    }
    @objc
    private func redScreenTap(){
        onRedScreenTap?()
    }
    @objc
    private func blueScreenTap(){
        onBlueScreenTap?()
    }

}

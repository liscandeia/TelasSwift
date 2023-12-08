//
//  redScreenView.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-25 on 08/12/23.
//

import Foundation
import UIKit


    class RedScreenView: UIView {
            override init(frame: CGRect) {
                super.init(frame: frame)
                backgroundColor = .customBackgroundColorRed
                setupVisualElements()
            }
        //MARK: -  Clouseres
         var onBlueScreenTap: (() -> Void)?
         var onGreenScreenTap: (() -> Void)?
        //MARK: - Propriets
        let blueButton = ButtonDefault(button: "Ir para a tela Azul", buttonColor: .customBackgroundColorBlue)
        let greenButton = ButtonDefault(button: "Voltar para a tela Verde", buttonColor: .customBackgroundColorGreen)

        
            func setupVisualElements(){
                self.addSubview(blueButton)
                self.addSubview(greenButton)
                blueButton.addTarget(self, action: #selector(blueScreenTap), for: .touchUpInside)
                greenButton.addTarget(self, action: #selector(greenScreenTap), for: .touchUpInside)

                //MARK: - Init
                NSLayoutConstraint.activate([
                blueButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 500),
                blueButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
                blueButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
                blueButton.heightAnchor.constraint(equalToConstant: 60),
                greenButton.topAnchor.constraint(equalTo: blueButton.bottomAnchor, constant: 50),
                greenButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
                greenButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
                greenButton.heightAnchor.constraint(equalToConstant: 60)
                ])
            }
            
            required init?(coder: NSCoder) {
                fatalError("init(coder:) has not been implemented")
            
        }
        @objc
        private func blueScreenTap(){
            onBlueScreenTap?()
        }
        @objc
        private func greenScreenTap(){
            onGreenScreenTap?()
        }

    }



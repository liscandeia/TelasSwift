//
//  blueScreenViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-25 on 08/12/23.
//

import Foundation
import UIKit

class BlueScreenViewController:ViewControllerDeafault {
    //MARK: -  Clouseres
    var onGreenScreenTap: (() -> Void)?
    
    lazy var viewBlueScreen: BlueScreenView = {
        let blueScreenView = BlueScreenView()
        blueScreenView.onGreenScreenTap = {
            self.onGreenScreenTap?()
        }
        
        return blueScreenView
    }()
    
    override func loadView() {
        self.view = viewBlueScreen;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Azul"; //self. e opcional
    }
        
    
}

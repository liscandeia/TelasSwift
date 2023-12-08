//
//  redScreenViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-25 on 08/12/23.
//

import Foundation

import Foundation
import UIKit
class RedScreenViewController:ViewControllerDeafault {
    //MARK: -  Clouseres
    var onGreenScreenTap: (() -> Void)?
    var onBlueScreenTap: (() -> Void)?
    
    lazy var viewRedScreen: RedScreenView = {
        let redScreenView = RedScreenView()
        redScreenView.onGreenScreenTap = {
            self.onGreenScreenTap?()
        }
        redScreenView.onBlueScreenTap = {
            self.onBlueScreenTap?()
        }
        
        return redScreenView
    }()
    
    override func loadView() {
        self.view = viewRedScreen;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Vermelha";
    }
        
    
}

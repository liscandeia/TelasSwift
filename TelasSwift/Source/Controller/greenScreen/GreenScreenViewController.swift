//
//  greenScreenViewController.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-25 on 08/12/23.
//

import Foundation
import UIKit
class GreenScreenViewController:ViewControllerDeafault {
    //MARK: -  Clouseres
    var onBlueScreenTap: (() -> Void)?
    var onRedScreenTap: (() -> Void)?
    
    lazy var viewGreenScreen: GreenScreenView = {
        let greenScreenView = GreenScreenView()
        greenScreenView.onBlueScreenTap = {
            self.onBlueScreenTap?()
        }
        greenScreenView.onRedScreenTap = {
            self.onRedScreenTap?()
        }
        
        return greenScreenView
    }()
    
    override func loadView() {
        self.view = viewGreenScreen;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Tela Verde";
    }
        
    
}

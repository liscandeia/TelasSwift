//
//  BlueScreenCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-25 on 08/12/23.
//

import Foundation
import UIKit
class BlueScreenCoordinator: Coordinator {
    //controle de navegaçao das view
    var navigationController : UINavigationController;
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //guardando a classe de controle da view em uma constante e renderizando
        let viewController = BlueScreenViewController();
        self.navigationController.pushViewController(viewController, animated: true)
        viewController.onGreenScreenTap = {
                      self.gotoGreenScreen()
                  }
            }
            
            //função que chama a registerView
            func  gotoGreenScreen() {
               let coordinator = GreenScreenCoordinator(navigationController: navigationController)
                coordinator.start()
            }
    }

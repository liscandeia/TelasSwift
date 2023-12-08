//
//  GreenScreenCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-25 on 08/12/23.
//

import Foundation
import UIKit
class GreenScreenCoordinator: Coordinator {
    //controle de navegaçao das view
    var navigationController : UINavigationController;
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //guardando a classe de controle da view em uma constante e renderizando
        let viewController = GreenScreenViewController();
        self.navigationController.pushViewController(viewController, animated: true)
        viewController.onBlueScreenTap = {
                      self.gotoBlueScreen()
                  }
        viewController.onRedScreenTap = {
                      self.gotoRedScreen()
                  }
            }
            
            //função que chama a registerView
            func  gotoBlueScreen() {
                self.navigationController.popViewController(animated: true)

            }
        func  gotoRedScreen() {
            let coordinator = RedScreenCoordinator(navigationController: navigationController)
            coordinator.start()
        }
    
    }

//
//  RedScreenCoordinator.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-25 on 08/12/23.
//

import Foundation
import UIKit
class RedScreenCoordinator: Coordinator {
    //controle de navegaçao das view
    var navigationController : UINavigationController;
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        //guardando a classe de controle da view em uma constante e renderizando
        let viewController = RedScreenViewController();
        self.navigationController.pushViewController(viewController, animated: true)
        viewController.onGreenScreenTap = {
                      self.gotoGreenScreen()
                  }
        viewController.onBlueScreenTap = {
                      self.gotoBlueScreen()
                  }
            }
            
            //função que chama a registerView
            func  gotoGreenScreen() {
                self.navigationController.popViewController(animated: true)

            }
        func  gotoBlueScreen() {
            //Para Voltar para a raiz/home
            navigationController.popToRootViewController(animated: true)
        }
    
    }

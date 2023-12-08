//
//  ViewControllerDefault.swift
//  TelasSwift
//
//  Created by IFB-BIOTIC-25 on 08/12/23.
//

import Foundation
import UIKit
class ViewControllerDeafault: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad();
        self.navigationController?.navigationBar.prefersLargeTitles = true;
        self.navigationItem.setHidesBackButton(true, animated: false)
        //para chamar o objeto que tira o teclado da tela
        let tap : UITapGestureRecognizer =  UITapGestureRecognizer(target: self, action: #selector (self.hideKeyBoardByTap))
        self.view.addGestureRecognizer(tap)
    }
    @objc
    func hideKeyBoardByTap(){
        self.view.endEditing(true)
    }
}

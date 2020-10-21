//
//  StartRouter.swift
//  SLISenger
//
//  Created by Stanislav Slipchenko on 21.10.2020.
//

import Foundation

protocol StartRouterProtocol: class {
    func presentLoginVC()
}

class StartRouter: StartRouterProtocol {
    
    weak var viewController: StartViewController!
    
    required init(viewController: StartViewController) {
        self.viewController = viewController
    }
    
    func presentLoginVC() {
        let loginVC = LoginViewController()
        loginVC.modalPresentationStyle = .fullScreen
        self.viewController.present(loginVC, animated: false, completion: nil)
    }
}

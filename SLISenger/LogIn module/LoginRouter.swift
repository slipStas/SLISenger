//
//  LoginRouter.swift
//  SLISenger
//
//  Created by Stanislav Slipchenko on 21.10.2020.
//

import Foundation

protocol LoginRouterProtocol: class {
    func presentRegisterVC()
}

class LoginRouter: LoginRouterProtocol {
    
    weak var viewController: LoginViewController!
    
    required init(viewController: LoginViewController) {
        self.viewController = viewController
    }
    
    func presentRegisterVC() {
        
    }
}

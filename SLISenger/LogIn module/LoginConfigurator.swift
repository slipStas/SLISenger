//
//  LoginConfigurator.swift
//  SLISenger
//
//  Created by Stanislav Slipchenko on 21.10.2020.
//

import Foundation

protocol LoginConfiguratorProtocol: class {
    func configure(with controller: LoginViewController)
}

class LoginConfigurator: LoginConfiguratorProtocol {
    
    func configure(with controller: LoginViewController) {
        let presenter = LoginPresenter(view: controller)
        let interactor = LoginInteractor(presenter: presenter)
        let router = LoginRouter(viewController: controller)
        
        controller.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}

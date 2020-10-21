//
//  StartConfigurator.swift
//  SLISenger
//
//  Created by Stanislav Slipchenko on 21.10.2020.
//

import Foundation

protocol StartConfiguratorProtocol: class {
    func configure(with controller: StartViewController)
}

class StartConfigurator: StartConfiguratorProtocol {
    
    func configure(with controller: StartViewController) {
        let presenter = StartPresenter(view: controller)
        let interactor = StartInteractor(presenter: presenter)
        let router = StartRouter(viewController: controller)
        
        controller.presenter = presenter
        presenter.interactor = interactor
        presenter.router = router
    }
}

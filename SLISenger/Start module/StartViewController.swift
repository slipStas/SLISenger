//
//  StartViewController.swift
//  SLISenger
//
//  Created by Stanislav Slipchenko on 21.10.2020.
//

import UIKit

protocol StartViewProtocol: class {
    
}

class StartViewController: UIViewController, StartViewProtocol {
    
    var presenter: StartPresenterProtocol!
    var configurator: StartConfiguratorProtocol = StartConfigurator()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .green
        configurator.configure(with: self)
        
        presenter.configureView(completionHandler: {})
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super .viewDidAppear(animated)
        
        let isUserLoggedIn = UserDefaults.standard.bool(forKey: "isUserLoggedIn")
        
        switch isUserLoggedIn {
        case true:
            print("user is logged in")
        case false:
            presenter.presentLoginVC()
            print("user is not logged in")
        }
    }
}

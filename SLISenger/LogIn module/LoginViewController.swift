//
//  LoginViewController.swift
//  SLISenger
//
//  Created by Stanislav Slipchenko on 21.10.2020.
//

import UIKit

protocol LoginViewProtocol: class {
    
}

class LoginViewController: UIViewController, LoginViewProtocol {
    
    var presenter: LoginPresenterProtocol!
    var configurator: LoginConfiguratorProtocol = LoginConfigurator()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPink
        configurator.configure(with: self)
        
        presenter.configureView(completionHandler: {})
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super .viewDidAppear(animated)
        
    }
}

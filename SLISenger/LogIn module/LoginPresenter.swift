//
//  LoginPresenter.swift
//  SLISenger
//
//  Created by Stanislav Slipchenko on 21.10.2020.
//

import Foundation

protocol LoginPresenterProtocol: class {
    
    var interactor: LoginInteractorProtocol! {get set}
    var router: LoginRouterProtocol! {get set}

    func configureView(completionHandler: @escaping() -> ())
    func presentRegisterVC()
}

class LoginPresenter: LoginPresenterProtocol {
   
    weak var view: LoginViewProtocol!
    var interactor: LoginInteractorProtocol!
    var router: LoginRouterProtocol!
    
    required init(view: LoginViewProtocol) {
        self.view = view
    }
    
    func configureView(completionHandler: @escaping () -> ()) {
        
        
    }
    
    func presentRegisterVC() {
        router.presentRegisterVC()
        
    }
}

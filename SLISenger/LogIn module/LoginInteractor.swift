//
//  LoginInteractor.swift
//  SLISenger
//
//  Created by Stanislav Slipchenko on 21.10.2020.
//

import Foundation

protocol LoginInteractorProtocol: class {
    
}

class LoginInteractor: LoginInteractorProtocol {
    
    weak var presenter: LoginPresenterProtocol!
    
    required init(presenter: LoginPresenterProtocol) {
        self.presenter = presenter
    }
    
    
}

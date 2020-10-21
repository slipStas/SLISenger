//
//  StartInteractor.swift
//  SLISenger
//
//  Created by Stanislav Slipchenko on 21.10.2020.
//

import Foundation

protocol StartInteractorProtocol: class {
    
}

class StartInteractor: StartInteractorProtocol {
    
    weak var presenter: StartPresenterProtocol!
    
    required init(presenter: StartPresenterProtocol) {
        self.presenter = presenter
    }
}

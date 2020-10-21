//
//  StartPresenter.swift
//  SLISenger
//
//  Created by Stanislav Slipchenko on 21.10.2020.
//

import Foundation

protocol StartPresenterProtocol: class {
    
    var interactor: StartInteractorProtocol! {get set}
    var router: StartRouterProtocol! {get set}

    func configureView(completionHandler: @escaping() -> ())
    func presentLoginVC()
}

class StartPresenter: StartPresenterProtocol {
   
    weak var view: StartViewProtocol!
    var interactor: StartInteractorProtocol!
    var router: StartRouterProtocol!
    
    required init(view: StartViewProtocol) {
        self.view = view
    }
    
    func configureView(completionHandler: @escaping () -> ()) {
       
    }
    
    func presentLoginVC() {
        router.presentLoginVC()
    }
}

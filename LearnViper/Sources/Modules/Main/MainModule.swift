//
//  MainModule.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 01/05/21.
//

import UIKit

class MainModule {
    
    func buildDefault() -> UIViewController {
        
        let view = MainDefaultView()
        let interactor = MainDefaultInteractor()
        let presenter = MainDefaultPresenter()
        let router = MainDefaultRouter()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.interactor = interactor
        presenter.view = view
        presenter.router = router
        
        router.presenter = presenter
        router.viewController = view
        
        return view
    }
}

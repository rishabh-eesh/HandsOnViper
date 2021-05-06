//
//  HomeModule.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 05/05/21.
//

import UIKit

class HomeModule{
    
    func buildDefault() -> UIViewController {
        
        let view = HomeDefaultView()
        let interactor = HomeDefaultInteractor()
        let presenter = HomeDefaultPresenter()
        let router = HomeDefaultRouter()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        router.presenter = presenter
        
        presenter.setupViewControllers()
        
        return view
    }
}

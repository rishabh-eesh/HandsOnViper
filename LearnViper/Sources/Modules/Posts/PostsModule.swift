//
//  PostsModule.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 06/05/21.
//

import UIKit

class PostsModule {
    
    func buildDefault() -> UIViewController {
        
        let view = PostsDefaultView()
        let interactor = PostsDefaultInteractor(apiService: Service.shared)
        let presenter = PostsDefaultPresenter()
        let router = PostsDefaultRouter()
        
        view.presenter = presenter
        
        interactor.presenter = presenter
        
        presenter.view = view
        presenter.interactor = interactor
        presenter.router = router
        
        router.presenter = presenter
        
        return view
    }
}

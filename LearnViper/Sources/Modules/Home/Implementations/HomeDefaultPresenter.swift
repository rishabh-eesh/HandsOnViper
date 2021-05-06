//
//  HomeDefaultPresenter.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 05/05/21.
//

import Foundation

class HomeDefaultPresenter {
    
    var interactor: HomeInteractor?
    var router: HomeRouter?
    var view: HomeView?
    
}

extension HomeDefaultPresenter: HomePresenter {
    
    func setupViewControllers() {
        guard let controllers = router?.getViewControllers() else { return }
        self.view?.display(controllers)
    }
}

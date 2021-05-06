//
//  MainDefaultPresenter.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 01/05/21.
//

import Foundation

class MainDefaultPresenter {
    
    var router: MainRouter?
    var interactor: MainInteractor?
    weak var view: MainView?
}

extension MainDefaultPresenter: MainPresenter {
    
    func viewDidAppear() {
        self.router?.showHome()
    }
}

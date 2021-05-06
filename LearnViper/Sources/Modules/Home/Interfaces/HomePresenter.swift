//
//  HomePresenter.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 05/05/21.
//

import Foundation

protocol HomePresenter {
    var interactor: HomeInteractor? { get set }
    var router: HomeRouter? { get set }
    var view: HomeView? { get set }
    
    func setupViewControllers()
}

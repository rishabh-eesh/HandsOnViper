//
//  MainPresenter.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 01/05/21.
//

import Foundation

protocol MainPresenter: class {
    
    var interactor: MainInteractor? { get set }
    var router: MainRouter? { get set }
    var view: MainView? { get set }
    
    func viewDidAppear()
}

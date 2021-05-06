//
//  MainRouter.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 01/05/21.
//

import Foundation

protocol MainRouter {
    
    var presenter: MainPresenter? { get set }
    
    func showHome()
}

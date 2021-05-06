//
//  HomeRouter.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 05/05/21.
//

import UIKit

protocol HomeRouter {
    var presenter: HomePresenter? { get set }
    
    func getViewControllers() -> [UIViewController]
}

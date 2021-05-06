//
//  HomeRouter.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 05/05/21.
//

import UIKit

class HomeDefaultRouter {
    
    var presenter: HomePresenter?
}

extension HomeDefaultRouter: HomeRouter {
    
    func getViewControllers() -> [UIViewController] {
        return [ PostsModule().buildDefault(),
                 ViewController(),
                 UIViewController(),
                 UIViewController()].map { UINavigationController(rootViewController: $0) }
    }
}

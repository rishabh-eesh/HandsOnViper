//
//  MainDefaultRouter.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 01/05/21.
//

import UIKit

class MainDefaultRouter {
    
    weak var presenter: MainPresenter?
    weak var viewController: UIViewController?
}

extension MainDefaultRouter: MainRouter {
    
    func showHome() {
        let controller = HomeModule().buildDefault()
        controller.modalPresentationStyle = .fullScreen
        self.viewController?.present(controller, animated: true)
    }
}

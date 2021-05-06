//
//  HomeDefaultView.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 05/05/21.
//

import Foundation
import UIKit

class HomeDefaultView: UITabBarController {
    
    var presenter: HomePresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBackground
    }
}

extension HomeDefaultView: HomeView {
    
    func display(_ viewControllers: [UIViewController]) {
        self.viewControllers = viewControllers
    }
}

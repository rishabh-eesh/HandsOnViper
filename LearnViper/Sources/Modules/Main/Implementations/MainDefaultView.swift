//
//  MainDefaultView.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 01/05/21.
//

import UIKit

class MainDefaultView: UIViewController {
    
    var presenter: MainPresenter?
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        presenter?.viewDidAppear()
    }
}

extension MainDefaultView: MainView {
    
}

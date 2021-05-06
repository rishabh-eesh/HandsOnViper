//
//  HomeView.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 05/05/21.
//

import UIKit

protocol HomeView {
    var presenter: HomePresenter? { get set }
    
    func display(_ viewControllers: [UIViewController])
}

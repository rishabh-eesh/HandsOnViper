//
//  PostDetailsPresenter.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 07/05/21.
//

import Foundation

protocol PostDetailsPresenter: class {
    
    var view: PostDetailsView? { get set }
    var interactor: PostDetailsInteractor? { get set }
    var router: PostDetailsRouter? { get set }
}

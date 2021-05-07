//
//  PostDetailsDefaultPresenter.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 07/05/21.
//

import Foundation

class PostDetailsDefaultPresenter {
    
    weak var view: PostDetailsView?
    var interactor: PostDetailsInteractor?
    var router: PostDetailsRouter?
    
}

extension PostDetailsDefaultPresenter: PostDetailsPresenter {
    
}

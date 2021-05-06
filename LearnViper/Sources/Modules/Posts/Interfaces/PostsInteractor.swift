//
//  PostsInteractor.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 06/05/21.
//

import Foundation

protocol PostsInteractor {
    
    var presenter: PostsPresenter? { get set }
    
    func posts()
}

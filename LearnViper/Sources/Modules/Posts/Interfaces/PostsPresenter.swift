//
//  PostsPresenter.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 06/05/21.
//

import Foundation

protocol PostsPresenter {
    
    var view: PostsView? { get set }
    var interactor: PostsInteractor? { get set }
    var router: PostsRouter? { get set }
    var posts: [Post]? { get set } 
    
    func reload()
    
    func numberOfItems() -> Int?
    func cellForItemAt(index: Int) -> Post?
}

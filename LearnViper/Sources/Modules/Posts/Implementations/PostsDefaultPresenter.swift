//
//  PostsDefaultPresenter.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 06/05/21.
//

import Foundation

class PostsDefaultPresenter {
 
    var view: PostsView?
    var interactor: PostsInteractor?
    var router: PostsRouter?
    
    var posts: [Post]? {
        didSet {
            view?.reloadData()
        }
    }
}

extension PostsDefaultPresenter: PostsPresenter {
    
    func reload() {
        interactor?.posts()
    }
    
    func numberOfItems() -> Int? {
        return posts?.count
    }
    
    func cellForItemAt(index: Int) -> Post? {
        return self.posts?[index]
    }
    
}

//
//  PostsDefaultInteractor.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 06/05/21.
//

import Foundation

class PostsDefaultInteractor {
    
    var presenter: PostsPresenter?
    let apiService: Service
    
    init(apiService: Service) {
        self.apiService = apiService
    }
}

extension PostsDefaultInteractor: PostsInteractor {
    
    func posts() {
        apiService.getPosts { [weak self] (posts, error) in
            if let error = error {
                debugPrint("Failed to get post data", error)
                return
            }
            
            //success
            self?.presenter?.posts = posts ?? []
        }
    }
}

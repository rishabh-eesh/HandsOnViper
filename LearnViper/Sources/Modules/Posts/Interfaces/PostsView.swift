//
//  PostsView.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 06/05/21.
//

import Foundation

protocol PostsView {
    
    var presenter: PostsPresenter? { get set }
    
//    var numberOfItems: Int? { get set }
    
    func reloadData()
}

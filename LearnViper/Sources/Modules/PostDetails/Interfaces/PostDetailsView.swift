//
//  PostDetailsView.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 07/05/21.
//

import Foundation

protocol PostDetailsView: class {
    
    var presenter: PostDetailsPresenter? { get set }
}

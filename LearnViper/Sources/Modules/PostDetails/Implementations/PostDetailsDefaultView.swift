//
//  PostDetailsDefaultView.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 07/05/21.
//

import UIKit

class PostDetailsDefaultView: UIViewController {
    
    var presenter: PostDetailsPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemPink
    }
}

extension PostDetailsDefaultView: PostDetailsView {
    
}

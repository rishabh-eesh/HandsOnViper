//
//  PostsDefaultView.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 06/05/21.
//

import Foundation
import UIKit

class PostsDefaultView: BaseListController, PostsView {
    
    var presenter: PostsPresenter?
    
    let cellId = String(describing: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Posts"
        collectionView.backgroundColor = .systemBackground
        
        collectionView.register(PostCell.self, forCellWithReuseIdentifier: cellId)
        
        presenter?.reload()
    }
    
    func reloadData() {
        DispatchQueue.main.async {
            self.collectionView.reloadData()
        }
    }
}

extension PostsDefaultView: UICollectionViewDelegateFlowLayout {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return presenter?.numberOfItems() ?? 0
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! PostCell
        let post = presenter?.cellForItemAt(index: indexPath.item)
        cell.textLabel.text = post?.title
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return .init(width: view.frame.width, height: 50)
    }
}

class PostCell: UICollectionViewCell {
    
    let textLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        textLabel.textColor = .label
        
        addSubview(textLabel)
        textLabel.fillSuperview(padding: .init(top: 8, left: 16, bottom: 8, right: 16))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

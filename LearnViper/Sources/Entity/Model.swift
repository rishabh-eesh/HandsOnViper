//
//  Model.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 06/05/21.
//

import Foundation

struct Post: Decodable {
    let id: Int
    let title: String
    let body: String
}

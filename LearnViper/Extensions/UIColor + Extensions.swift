//
//  UIColor + Extensions.swift
//  PromoSuite
//
//  Created by Rishabh on 22/03/21.
//  Copyright © 2021 ksolves. All rights reserved.
//

import UIKit

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}

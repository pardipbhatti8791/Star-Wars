//
//  BlackBackground.swift
//  StarTrivia
//
//  Created by Pardip Bhatti on 25/04/19.
//  Copyright © 2019 Pardip Bhatti. All rights reserved.
//

import Foundation
import UIKit

class BlackBackground: UIView {
    
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_GB
        layer.cornerRadius = 10
    }
}

class BlackBGButton: UIButton {
    override func awakeFromNib() {
        layer.backgroundColor = BLACK_GB
        layer.cornerRadius = 10
    }
}

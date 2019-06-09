//
//  FadeEnabledBtn.swift
//  StarTrivia
//
//  Created by Pardip Bhatti on 09/06/19.
//  Copyright © 2019 Pardip Bhatti. All rights reserved.
//

import UIKit

class FadeEnabledBtn: UIButton {
    override var isEnabled: Bool {
        didSet {
            if isEnabled {
                UIView.animate(withDuration: 0.2) {
                    self.alpha = 1.0
                }
            } else {
                UIView.animate(withDuration: 0.2) {
                    self.alpha = 0.5
                }
            }
        }
    }
}

//
//  overrideUIImage.swift
//  EcoCap
//
//  Created by Renan Bronchart on 06/06/2018.
//  Copyright © 2018 Renan Bronchart. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
extension UIImageView {
    open override func draw(_ rect: CGRect) {
        self.clipsToBounds = true
    }
    
    @IBInspectable
    var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            self.clipsToBounds = true
            layer.cornerRadius = newValue
        }
    }
    
    @IBInspectable
    var isRounded: Bool {
        get {
            return self.isRounded
        }
        set {
            if newValue == true {
                self.clipsToBounds = true
                layer.cornerRadius = self.frame.height / 2
            } else {
                layer.cornerRadius = 0
            }
        }
    }
}

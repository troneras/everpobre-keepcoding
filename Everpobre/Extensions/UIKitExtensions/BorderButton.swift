//
//  GradientButton.swift
//  Everpobre
//
//  Created by Antonio Blazquez Bea on 07/04/2018.
//  Copyright © 2018 Antonio Blazquez Bea. All rights reserved.
//

import UIKit

@IBDesignable
class BorderButton: UIButton {
    
    @IBInspectable
    var cornerRadius: Int = 0 {
        didSet {
            self.layer.cornerRadius = CGFloat( cornerRadius )
        }
    }
    
    @IBInspectable
    var borderWidth: Int = 1 {
        didSet {
            self.layer.borderWidth = CGFloat( borderWidth )
        }
    }
    
    @IBInspectable
    var borderColor: UIColor = UIColor.blue {
        didSet {
            self.layer.borderColor = borderColor.cgColor
        }
    }
}

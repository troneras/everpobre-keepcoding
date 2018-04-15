//
//  UIViewController+Additions.swift
//  Everpobre
//
//  Created by Antonio Blazquez Bea on 05/04/2018.
//  Copyright © 2018 Antonio Blazquez Bea. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func wrappedInNavigation() -> UINavigationController {
        return UINavigationController(rootViewController: self)
    }
    
}

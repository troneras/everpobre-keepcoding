//
//  NoteViewByCodeController+Actions.swift
//  Everpobre
//
//  Created by Antonio Blazquez Bea on 09/04/2018.
//  Copyright © 2018 Antonio Blazquez Bea. All rights reserved.
//

import Foundation
import UIKit

extension NoteViewByCodeController {
    
    @objc func closeKeyboard() {
        if noteTextView.isFirstResponder {
            noteTextView.resignFirstResponder()
        } else if titleTextField.isFirstResponder {
            titleTextField.resignFirstResponder()
        }
    }
    
    @objc func moveImage(tapGesture:UITapGestureRecognizer) {
        if topImgConstraint.isActive {
            if leftImgConstraint.isActive {
                leftImgConstraint.isActive = false
                rightImgConstraint.isActive = true
            } else {
                topImgConstraint.isActive = false
                bottomImgConstraint.isActive = true
            }
        } else {
            if leftImgConstraint.isActive {
                bottomImgConstraint.isActive = false
                topImgConstraint.isActive = true
            } else {
                rightImgConstraint.isActive = false
                leftImgConstraint.isActive = true
            }
        }
        
        UIView.animate(withDuration: 0.4) {
            self.view.layoutIfNeeded()
        }
    }
    
    @objc func userMoveImage(longPressGesture:UILongPressGestureRecognizer) {
        switch longPressGesture.state {
        case .began:
            closeKeyboard()
            relativePoint = longPressGesture.location(in: longPressGesture.view)
            UIView.animate(withDuration: 0.1, animations: {
                self.imageView.transform = CGAffineTransform.init(scaleX: 1.2, y: 1.2)
            })
            
        case .changed:
            let location = longPressGesture.location(in: noteTextView)
            
            leftImgConstraint.constant = location.x - relativePoint.x
            topImgConstraint.constant = location.y - relativePoint.y
            
        case .ended, .cancelled:
            UIView.animate(withDuration: 0.1, animations: {
                self.imageView.transform = CGAffineTransform.init(scaleX: 1, y: 1)
            })
            
        default:
            break
        }
    }
}

//
//  NoteViewByCodeController+UIImagePickerControllerDelegate.swift
//  Everpobre
//
//  Created by Antonio Blazquez Bea on 09/04/2018.
//  Copyright © 2018 Antonio Blazquez Bea. All rights reserved.
//

import Foundation
import UIKit 

extension NoteViewByCodeController : UIImagePickerControllerDelegate {
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        
        imageView.image = image
        
        picker.dismiss(animated: true, completion: nil)
    }
}

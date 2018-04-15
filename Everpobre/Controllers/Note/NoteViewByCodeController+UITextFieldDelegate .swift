//
//  NoteViewByCodeController+UITextFieldDelegate .swift
//  Everpobre
//
//  Created by Antonio Blazquez Bea on 09/04/2018.
//  Copyright © 2018 Antonio Blazquez Bea. All rights reserved.
//

import Foundation
import UIKit

extension NoteViewByCodeController : UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        note?.title = textField.text
        
        do {
            try note?.managedObjectContext?.save()
        } catch {
            
        }
    }
}

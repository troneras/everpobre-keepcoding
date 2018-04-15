//
//  NoteViewByCodeController+NoteTableViewControllerDelegate.swift
//  Everpobre
//
//  Created by Antonio Blazquez Bea on 09/04/2018.
//  Copyright © 2018 Antonio Blazquez Bea. All rights reserved.
//

import Foundation
import UIKit

extension NoteViewByCodeController : NoteTableViewControllerDelegate {
    func noteTableViewController(_ viewController: NoteTableViewController, didSelectNote: Note) {
        self.note = didSelectNote
        self.syncModelWithView()
    }
}

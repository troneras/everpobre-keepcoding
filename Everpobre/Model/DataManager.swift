//
//  DataManager.swift
//  Everpobre
//
//  Created by Antonio Blazquez Bea on 12/03/2018.
//  Copyright © 2018 Antonio Blazquez Bea. All rights reserved.
//

import UIKit
import CoreData

class DataManager: NSObject {
    // MOC: Manager Object Context
    
    // MARK: - Properties
    
    static let shared = DataManager()
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "Everpobre")
        container.loadPersistentStores { (storeDescription: NSPersistentStoreDescription, error: Error?) in
            if let err = error {
                print(err)
            }
            
            container.viewContext.automaticallyMergesChangesFromParent = true
        }
        
        return container
    }()
}

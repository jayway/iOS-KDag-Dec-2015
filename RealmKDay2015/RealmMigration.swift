//
//  RealmMigration.swift
//  RealmKDay2015
//
//  Created by Petar Mataic on 01/12/15.
//  Copyright © 2015 Petar Mataic. All rights reserved.
//

import Foundation
import RealmSwift

class RealmMigration {
    
    class func performMigration() {
        
        let config = Realm.Configuration(
            schemaVersion: 1,
            migrationBlock: { (migration, oldSchemaVersion) -> Void in
                
                migration.enumerate(Person.className()) { (oldVersion, newVersion) in
                    if oldSchemaVersion < 1 {
                        
                        newVersion!["imageData"] = nil
                        
                    }
                }
                
        })
        
        Realm.Configuration.defaultConfiguration = config
    }
    
}
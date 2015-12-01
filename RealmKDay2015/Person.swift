//
//  Person.swift
//  RealmKDay2015
//
//  Created by Petar Mataic on 01/12/15.
//  Copyright © 2015 Petar Mataic. All rights reserved.
//

import Foundation
import RealmSwift
import UIKit

class Person: Object {
    
    dynamic var name: String = ""
    dynamic var age: Int = 0
    
    var image: UIImage = UIImage()
    
    override var description: String {
        return "\(name) is \(age) years old"
    }
    
    override static func primaryKey() -> String? {
        return "name"
    }
    
}
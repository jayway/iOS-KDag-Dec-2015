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
    dynamic var imageData: NSData?
    
    var image: UIImage? {
        get {
            guard let data = self.imageData else { return nil }
            
            return UIImage(data: data)
        }
        set {
            guard let img = newValue, pngData = UIImagePNGRepresentation(img) else {
                self.imageData = nil
                return
            }
            
            self.imageData = pngData
        }
    }
    
    override var description: String {
        return "\(name) is \(age) years old"
    }
    
    
    override static func ignoredProperties() -> [String] {
        return ["image"]
    }
    
    override static func primaryKey() -> String? {
        return "name"
    }
    
}
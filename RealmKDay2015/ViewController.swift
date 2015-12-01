//
//  ViewController.swift
//  RealmKDay2015
//
//  Created by Petar Mataic on 01/12/15.
//  Copyright © 2015 Petar Mataic. All rights reserved.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let p = Person()
        p.name = "Petar"
        p.age = 26
        
        print(p.description)
        
        let realm = try! Realm()
        
        
        try! realm.write {
            realm.add(p, update: true)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


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
        
        let realm = try! Realm()
        
        let allPersons = realm.objects(Person)
        
        if let firstPerson = allPersons.first {
            print(firstPerson.description)
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  TestLocalization
//
//  Created by Susan Salas on 7/14/17.
//  Copyright © 2017 Susan Salas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let testLabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        testLabel.frame.origin.x = 0
        testLabel.frame.origin.y = 200
        testLabel.frame.size.height = 20
        testLabel.frame.size.width = 200
        
        view.addSubview(testLabel)
        
//        let language = "de"
//        let path = Bundle.main.path(forResource: language, ofType: "lproj")
//        let bundle = Bundle(path: path!)
//        _ = bundle?.localizedString(forKey: "key", value: nil, table: nil)
        
        
        let text = NSLocalizedString("UIString", tableName: nil, bundle: Bundle.main, value: "", comment: "another string")
        
        testLabel.text = text
        
    }


}


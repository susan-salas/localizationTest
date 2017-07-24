//
//  TestViewController.swift
//  TestLocalization
//
//  Created by Xiaoming Chen on 7/24/17.
//  Copyright © 2017 Susan Salas. All rights reserved.
//

import UIKit
import Localize_Swift

class TestViewController: UIViewController {
    
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBAction func changeBtnDidPressed(_ sender: Any) {
        
        let availableLanguages = Localize.availableLanguages()
        
        let actionSheet = UIAlertController(title: nil, message: "Switch Language", preferredStyle: UIAlertControllerStyle.actionSheet)
        for language in availableLanguages {
            let displayName = Localize.displayNameForLanguage(language)
            let languageAction = UIAlertAction(title: displayName, style: .default, handler: {
                (alert: UIAlertAction!) -> Void in
                Localize.setCurrentLanguage(language)
            })
            actionSheet.addAction(languageAction)
        }
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: {
            (alert: UIAlertAction) -> Void in
        })
        actionSheet.addAction(cancelAction)
        self.present(actionSheet, animated: true, completion: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        NotificationCenter.default.addObserver(self, selector: #selector(setText), name: NSNotification.Name( LCLLanguageChangeNotification), object: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setText()
        
        let languages = Localize.availableLanguages()
        print(languages)
        
        

        // Do any additional setup after loading the view.
    }
    
    func setText() {
//        textLabel.text = "Hello World".localized()
        view.setNeedsDisplay()
    }
}

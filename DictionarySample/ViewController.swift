//
//  ViewController.swift
//  DictionarySample
//
//  Created by yama3 on 2016/07/05.
//  Copyright © 2016年 yama3. All rights reserved.
//

import UIKit
import ChameleonFramework

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        self.view.tintColor = UIColor.flatGreenColorDark()
        //self.view.backgroundColor = UIColor.flatMintColor()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var searchTextField: UITextField!
    
    @IBAction func search(sender: UIButton) {
        if let text = searchTextField.text {
            self.search(text)
        }
    }
    
    @nonobjc
    func search(term: String) {
        if UIReferenceLibraryViewController.dictionaryHasDefinitionForTerm(term) {
            let vc = UIReferenceLibraryViewController(term: term)
            presentViewController(vc, animated: true, completion: nil)
        }
        else {
            let alert = UIAlertController(title: "not found", message: "not found definitions", preferredStyle: .Alert)
            alert.addAction(UIAlertAction(title: "OK", style: .Cancel, handler: nil))
            presentViewController(alert, animated: true, completion: nil)
        }
    }

}


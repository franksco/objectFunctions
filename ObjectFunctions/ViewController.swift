//
//  ViewController.swift
//  ObjectFunctions
//
//  Created by Cory Franks on 2/10/17.
//  Copyright © 2017 Cory Franks. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var textView: UITextView!
    @IBOutlet var textField: UITextField!
    @IBOutlet var label2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func setText(_ sender: Any) {
        
        label.text = "I am in the label!"
        
        textView.text = textField.text
        
    }

    @IBAction func dismissKeyboard(_ sender: Any) {
        
        self.resignFirstResponder()
    }
    
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        
        if text == "\n" {
            
            textView.resignFirstResponder()
            return false
            
        }
        return true
        
    }
    
    
    @IBAction func setColor(_ sender: Any) {
        
        label2.textColor = UIColor.red
        
    }

    @IBAction func setBackground(_ sender: Any) {
        
        label2.backgroundColor = UIColor.lightGray
        
    }
    
    @IBAction func setShadow(_ sender: Any) {
        

        
    }
    
    @IBAction func shadowColor(_ sender: Any) {
        
        
        
    }
    
    @IBAction func fontSize(_ sender: Any) {
        
        
        
    }
    
    @IBAction func center(_ sender: Any) {
        
        
        
    }
    
    @IBAction func left(_ sender: Any) {
        
        
        
    }
    
    @IBAction func right(_ sender: Any) {
        
        
        
    }
    
    
}


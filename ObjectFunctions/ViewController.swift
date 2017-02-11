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
        
        label2.layer.shadowColor = UIColor.black.cgColor
        label2.layer.shadowOffset = CGSize (width: 2, height: 2)
        label2.layer.shadowRadius = 2
        label2.layer.shadowOpacity = 0.25
    }
    
    @IBAction func shadowColor(_ sender: Any) {
        
        label2.layer.shadowColor = UIColor.blue.cgColor
        
    }
    
    @IBAction func fontSize(_ sender: Any) {
        
        label2.font = UIFont(name: "Verdana", size: 30)
        
    }
    
    @IBAction func center(_ sender: Any) {
        
        label2.textAlignment = NSTextAlignment.center
        
    }
    
    @IBAction func left(_ sender: Any) {
        
        label2.textAlignment = NSTextAlignment.left
        
    }
    
    @IBAction func right(_ sender: Any) {
        
        label2.textAlignment = NSTextAlignment.right

        
    }
    
    
}


//
//  ViewController.swift
//  AuthentiacationForm
//
//  Created by hoang.nguyenh on 12/29/25.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    
    @IBOutlet weak var email: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var confirm: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        name.delegate = self
        email.delegate = self
        password.delegate = self
        confirm.delegate = self
        
        
        let tap = UITapGestureRecognizer(
            target: self,
            action: #selector(dismissKeyboard)
        )
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
        
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

}


extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == name {
            email.becomeFirstResponder()
        } else if textField == email {
            password.becomeFirstResponder()
        }else if textField == password {
            confirm.becomeFirstResponder()
        } else {
            textField.resignFirstResponder() // tắt keyboard
        }
        return true
    }
}



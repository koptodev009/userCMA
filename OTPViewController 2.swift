//
//  OTPViewController.swift
//  cma_user
//
//  Created by KoptoTech on 21/02/23.
//

import UIKit

class OTPViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var SubmitButton: UIButton!
    
    @IBOutlet weak var otp: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideKeyboardWhenTappedAround()
        
        
        
        SubmitButton.layer.cornerRadius = 15
        SubmitButton.layer.masksToBounds = true
        
        
        otp.delegate = self

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSubmitted(_ sender: Any)
    {
        
        if let btnSubmitted = sender as? UIButton {
            btnSubmitted.layer.cornerRadius = 15 // apply corner radius here
            btnSubmitted.layer.masksToBounds = true
        }
        performSegue(withIdentifier: K.Segue.formScreen, sender: nil)
    }

    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == otp {
            let allowedCharacters = CharacterSet.decimalDigits
            let characterSet = CharacterSet(charactersIn: string)
            let isValidInput = allowedCharacters.isSuperset(of: characterSet)
            textField.textColor = UIColor.white
            
            if isValidInput {
                let currentText = textField.text ?? ""
                let proposedText = (currentText as NSString).replacingCharacters(in: range, with: string)
                if proposedText.count > 6 {
                    return false
                }
            }
            
            return isValidInput
        }
        
        return true
    }
}


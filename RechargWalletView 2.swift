//
//  RechargWalletView.swift
//  cma_user
//
//  Created by india on 03/03/23.
//

import UIKit

class RechargWalletView: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var AmountCalcultion: UILabel!
    @IBOutlet weak var Finalamount: UILabel!
    @IBOutlet weak var WalletAmount: UILabel!
    @IBOutlet weak var RechageAmount: UITextField!
    
    
    @IBOutlet weak var GSTtext: UILabel!
    
    //Recharge Buttons
    
    @IBOutlet weak var textview: UIView!
    
    @IBOutlet weak var Button100: UIButton!
    @IBOutlet weak var Button200: UIButton!
    @IBOutlet weak var Button300: UIButton!
    @IBOutlet weak var Button400: UIButton!
    @IBOutlet weak var Button500: UIButton!
    @IBOutlet weak var Button600: UIButton!
    @IBOutlet weak var Button700: UIButton!
    @IBOutlet weak var Button800: UIButton!
    @IBOutlet weak var Paynow: UIButton!
    
    
    
    @IBAction func btn_backWallet(_ sender: Any) {
        let backWallet = self.storyboard?.instantiateViewController(withIdentifier: "PaymentHistory")
 as! PaymentHistoryView
        
        self.navigationController?.pushViewController(backWallet, animated: true)
    }
    
    
    @IBAction func Button100Tapped(_ sender: Any) {
        if let button = sender as? UIButton {
            let amount: String =  button.titleLabel?.text?.replacingOccurrences(of: "₹ ", with: "", options: .literal, range: nil) ?? ""
            
            RechageAmount.text = amount
        }
    }
        


    @IBAction func RechageAmount(_ sender: UITextField) {
                if let text = sender.text, !text.isEmpty {
            GSTtext.text = "Total Amount with GST(18%)"
                if let amount = Double(text) {
                    let total = amount * 1.18
                    Finalamount.text = String(format: "%.2f", total)
                }
            } else {
                GSTtext.text = "GST 18%"
                Finalamount.text = nil
            }
    }
    
   
    
    
    //TextFieldAnimation
    func textFieldDidBeginEditing(_ textField: UITextField) {
        
        UIView.animate(withDuration: 3.0) {
            
            let leftPaddingView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 0))
            textField.leftView = leftPaddingView
            textField.leftViewMode = .always
            let label = UILabel(frame: CGRect(x: 10, y: -2, width: 100, height: 12))
            label.text = textField.placeholder
            label.font = UIFont.systemFont(ofSize: 12)
            label.layer.name = textField.placeholder
            textField.placeholder = nil
            label.textColor = .white
            label.tag = 100 // Set a unique tag so we can find the label later
            textField.addSubview(label)
        }
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // Remove placeholder label and animate back down
        
        if let label = textField.viewWithTag(100) {
            if(textField.text==""){
                textField.placeholder = label.layer.name
                label.removeFromSuperview()
                textField.borderStyle = .none
                UIView.animate(withDuration: 0.2) {
                    
                }
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dismissKeyboard()
    
        
        RechageAmount.delegate = self
        
        Button100.layer.cornerRadius = 10.0
        Button100.layer.masksToBounds = true
        Button200.layer.cornerRadius = 10.0
        Button200.layer.masksToBounds = true
        Button300.layer.cornerRadius = 10.0
        Button300.layer.masksToBounds = true
        Button400.layer.cornerRadius = 10.0
        Button400.layer.masksToBounds = true
        Button500.layer.cornerRadius = 10.0
        Button500.layer.masksToBounds = true
        Button600.layer.cornerRadius = 10.0
        Button600.layer.masksToBounds = true
        Button700.layer.cornerRadius = 10.0
        Button700.layer.masksToBounds = true
        Button800.layer.cornerRadius = 10.0
        Button800.layer.masksToBounds = true
        Paynow.layer.cornerRadius = 10.0
        Paynow.layer.masksToBounds = true
        textview.layer.cornerRadius = 5.0
        textview.layer.masksToBounds = true
        
        
    }
}



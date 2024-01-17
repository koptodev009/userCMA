//
//  SupportView.swift
//  cma_user
//
//  Created by india on 04/03/23.
//

import Foundation
import UIKit

class SupportView: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var mail: UIView!
    @IBOutlet weak var detailBox: UIView!
    @IBOutlet weak var sendbutton: UIButton!
    @IBOutlet weak var subText: UITextField!
    @IBOutlet weak var messageText: UITextField!
    
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        // Set the bottom border color to blue when editing begins
        textField.borderStyle = .none
        
        textField.layer.masksToBounds = false
        textField.layer.shadowColor = UIColor(red: 66/255, green: 92/255, blue: 242/255, alpha: 1).cgColor
        textField.layer.shadowOffset = CGSize(width: 0.0    , height: 2.0)
        textField.layer.shadowOpacity = 2.0
        textField.layer.shadowRadius = 1.0
    }

    func textFieldDidEndEditing(_ textField: UITextField) {
        // Remove the bottom border when editing ends
        textField.borderStyle = .none
        textField.layer.shadowColor = UIColor.clear.cgColor
        textField.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        textField.layer.shadowOpacity = 0.0
        textField.layer.shadowRadius = 0.0
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let navigationController = self.navigationController {
//            navigationController.popViewController(animated: true)
//        }
        subText.delegate = self
        messageText.delegate = self
        
        let viewsToApply: [UIView?] = [mail, detailBox, sendbutton]
        var unwrappedViews: [UIView] = []

        for view in viewsToApply {
            if let view = view {
                unwrappedViews.append(view)
            }
        }

        applyCornerRadiusAndBorderColor(unwrappedViews, cornerRadius: 10, borderWidth: 2, borderColor: UIColor(red: 53/255, green: 50/255, blue: 90/255, alpha: 1))

        
    }
    
    
}
        
    

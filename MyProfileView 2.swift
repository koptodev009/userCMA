//
//  MyProfileView.swift
//  cma_user
//
//  Created by india on 04/03/23.
//

import UIKit

class MyProfileView: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var scrollview: UIView!
    @IBOutlet weak var ProfileBox: UIView!
    @IBOutlet weak var name: UIView!
    @IBOutlet weak var email: UIView!
    @IBOutlet weak var mobilno: UIView!
    @IBOutlet weak var gender: UIView!
  
    @IBOutlet weak var BirthDate: UIView!
    
    
    @IBAction func btn_BackToProfile(_ sender: Any) { let BackToProfile = self.storyboard?.instantiateViewController(withIdentifier: "userprofile") as! UserProfileView
        self.navigationController?.pushViewController(BackToProfile, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollview.layer.cornerRadius = 10
        scrollview.layer.borderWidth = 2

        var viewsToApply: [UIView?] = [ProfileBox, name, email, mobilno, gender, BirthDate]
        var unwrappedViews: [UIView] = []

        for view in viewsToApply {
            if let view = view {
                unwrappedViews.append(view)
            }
        }

        applyCornerRadiusAndBorderColor(unwrappedViews, cornerRadius: 10, borderWidth: 2, borderColor: UIColor(red: 53/255, green: 50/255, blue: 90/255, alpha: 1))

        
    }
    
    
}

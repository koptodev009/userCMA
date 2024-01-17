//
//  SettingsView.swift
//  cma_user
//
//  Created by india on 05/03/23.
//

import Foundation
import UIKit

class SettingsView: UIViewController {
    
    @IBOutlet weak var setting: UIView!
    @IBOutlet weak var logout: UIView!
    
    @IBAction func btn_backSetting(_ sender: Any) { let backSetting = self.storyboard?.instantiateViewController(withIdentifier: "userprofile") as! UserProfileView
        self.navigationController?.pushViewController(backSetting, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var viewsToApply: [UIView?] = [setting, logout]
        var unwrappedViews: [UIView] = []

        for view in viewsToApply {
            if let view = view {
                unwrappedViews.append(view)
            }
        }

        applyCornerRadiusAndBorderColor(unwrappedViews, cornerRadius: 10, borderWidth: 2, borderColor: UIColor(red: 53/255, green: 50/255, blue: 90/255, alpha: 1))


        
        
    }
}

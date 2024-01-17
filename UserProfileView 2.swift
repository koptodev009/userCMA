//
//  UserProfileView.swift
//  cma_user
//
//  Created by india on 08/03/23.
//

import Foundation
import UIKit

class UserProfileView: UIViewController {
    
    
    @IBAction public func profile(_ sender: Any) {
        // Create an instance of the destination view controller
        let destinationVC = self.storyboard?.instantiateViewController(withIdentifier: "MyProfile") as! MyProfileView

        // Present the destination view controller
        self.navigationController?.pushViewController(destinationVC, animated: true)
    }
    
    
    
    @IBOutlet weak var ViewOne: UIView!

    @IBOutlet weak var viewTwo: UIView!

    
    @IBAction func btn_Profile(_ sender: Any) { let Profile = self.storyboard?.instantiateViewController(withIdentifier: "MyProfile") as! MyProfileView
        self.navigationController?.pushViewController(Profile, animated: true)
    }
    
    
    @IBAction func btnorderHistory(_ sender: Any) { let orderHistory = self.storyboard?.instantiateViewController(withIdentifier: "OrderHistory") as! OrderHistoryView
        self.navigationController?.pushViewController(orderHistory, animated: true)
    }
    
    @IBAction func btn_bookingDetails(_ sender: Any) {
        let bookingDetails = self.storyboard?.instantiateViewController(withIdentifier: "BookingDetails") as! BookingDetailsView
        self.navigationController?.pushViewController(bookingDetails, animated: true)
        
    }
    
    @IBAction func btn_support(_ sender: Any) { let support = self.storyboard?.instantiateViewController(withIdentifier: "Support") as! SupportView
        self.navigationController?.pushViewController(support, animated: true)
    }
    
    @IBAction func btn_setting(_ sender: Any) { let setting = self.storyboard?.instantiateViewController(withIdentifier: "Settings") as! SettingsView
        self.navigationController?.pushViewController(setting, animated: true)
    }
    
    
    @IBAction func btn_balance(_ sender: Any) { let balance = self.storyboard?.instantiateViewController(withIdentifier: "PaymentHistory") as! PaymentHistoryView
        self.navigationController?.pushViewController(balance, animated: true)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ViewOne.layer.cornerRadius = 10
        ViewOne.layer.masksToBounds = true
        
        viewTwo.layer.cornerRadius = 10
        viewTwo.layer.masksToBounds = true
        

    }
}

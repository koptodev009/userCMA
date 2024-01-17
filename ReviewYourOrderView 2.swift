//
//  ReviewYourOrderView.swift
//  cma_user
//
//  Created by india on 05/03/23.
//

import Foundation
import UIKit

class ReviewYourOrderView: UIViewController{
    
    
    
    @IBOutlet weak var btnContinue: UIButton!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        btnContinue.layer.cornerRadius = 10
        btnContinue.layer.masksToBounds = true
        
    }
}

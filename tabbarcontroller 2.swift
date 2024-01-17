//
//  tabbarcontroller.swift
//  cma_user
//
//  Created by Koptotech on 06/04/23.
//

import UIKit

class tabbarcontroller: UIViewController {
    
    
    @IBOutlet weak var viewforTab: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func designableTabbar(){
        
        viewforTab.layer.cornerRadius = viewforTab.frame.height / 2
        viewforTab.layer.masksToBounds = true
    }
}

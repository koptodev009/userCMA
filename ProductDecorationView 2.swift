//
//  ProductDecorationView.swift
//  cma_user
//
//  Created by india on 10/03/23.
//

import Foundation

import UIKit


class ProductDecorationView: UIViewController {
    
    
    
    
    @IBAction func btn_buyNow(_ sender: Any) {
        let buyNow = self.storyboard?.instantiateViewController(withIdentifier: "ShoppingItem") as! ShoppingItemView
        
        self.navigationController?.pushViewController(buyNow, animated: true)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
}


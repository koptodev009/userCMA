//
//  ShoppingItemView.swift
//  cma_user
//
//  Created by india on 10/03/23.
//



import UIKit

class ShoppingItemView: UIViewController {
    
    
    @IBOutlet weak var btn_addToCart: UIButton!
    
    @IBAction func btn_addToCart(_ sender: Any) {
        
        let addToCart = self.storyboard?.instantiateViewController(withIdentifier: "Order") as! OrderView
        
        self.navigationController?.pushViewController(addToCart, animated: true)
    }
    
    
    @IBAction func btn_ToCart(_ sender: Any) {
        
        let ToCart = self.storyboard?.instantiateViewController(withIdentifier: "Order") as! OrderView
        
        self.navigationController?.pushViewController(ToCart, animated: true)
    }
    
    
    
    
    @IBAction func btn_backCart(_ sender: Any) {
        
        let backCart = self.storyboard?.instantiateViewController(withIdentifier: "AstroStatus") as! AstroStatusView
        
        self.navigationController?.pushViewController(backCart, animated: true)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        btn_addToCart.layer.cornerRadius = 10
        btn_addToCart.layer.masksToBounds = true
    }
}

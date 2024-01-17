//
//  OrderTableViewCell.swift
//  cma_user
//
//  Created by india on 06/03/23.
//

import UIKit

class OrderTableViewCell: UITableViewCell {
    
    
    
    @IBOutlet weak var selctQuentity: UIView!
    
    @IBOutlet weak var quantityTextField: UITextField!
    var quantity: Int = 0
    override func awakeFromNib() {
        super.awakeFromNib()
        
        quantityTextField.text = "\(quantity)"
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        selctQuentity.layer.cornerRadius = 20
        selctQuentity.layer.masksToBounds = true

        // Configure the view for the selected state
    }
    
    @IBAction func plusButtonTapped(_ sender: UIButton) {
            // Increase the quantity by 1 and update the text field
            quantity += 1
            quantityTextField.text = "\(quantity)"
        }
        
        @IBAction func minusButtonTapped(_ sender: UIButton) {
            // Decrease the quantity by 1 (but not below 0) and update the text field
            if quantity > 0 {
                quantity -= 1
                quantityTextField.text = "\(quantity)"
            }
        }

}

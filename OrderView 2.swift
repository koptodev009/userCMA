//
//  OrderView.swift
//  cma_user
//
//  Created by india on 06/03/23.
//

import Foundation
import UIKit

class OrderView: UIViewController, UITextFieldDelegate{
    
    
    @IBOutlet weak var OrderTableView: UITableView!
    @IBOutlet weak var btncontinue: UIButton!
    
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        OrderTableView.register(PaymentHistoryCell.self, forCellReuseIdentifier: "OrderTableViewCell")
        
        btncontinue.layer.cornerRadius = 5
        btncontinue.layer.masksToBounds = true
        
        
        
    }
}

extension OrderView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 190.0
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderHistoryCell") as! OrderTableViewCell
//        let label = cell.textLabel // replace this with the actual label in your cell
//        label?.text = "Some dynamic text" // replace this with the actual text for this row
//        let height = label?.sizeThatFits(CGSize(width: label!.bounds.width, height: CGFloat.greatestFiniteMagnitude)).height
//        return height ?? UITableView.automaticDimension
//
//    }


    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "OrderHistoryCell", for: indexPath) as! OrderTableViewCell
            
            return cell
        }
    
    }






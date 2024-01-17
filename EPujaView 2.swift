//
//  EPujaView.swift
//  cma_user
//
//  Created by india on 10/03/23.
//

import Foundation

import UIKit

class EPujaView: UIViewController {
    
    
    @IBOutlet weak var Booking: UIView!
    
    @IBOutlet weak var pujaBooking: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleBookingTap(_:)))
        Booking.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleBookingTap(_ gesture: UITapGestureRecognizer)  {
        let Booking = self.storyboard?.instantiateViewController(withIdentifier: "BookingDetails") as! BookingDetailsView
        
        self.navigationController?.pushViewController(Booking, animated: true)
        
    }
    
    }
    


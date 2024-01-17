//
//  HoroscopeView.swift
//  cma_user
//
//  Created by india on 06/03/23.
//

import Foundation
import UIKit

class HoroscopeView: UIViewController {
    
    @IBOutlet weak var horoscope: UILabel!
    
    
    @IBAction func btn_backHoroscope(_ sender: Any) {
        let backHoroScope = self.storyboard?.instantiateViewController(withIdentifier: "MainController") as!UIExploreScreenView
        
        self.navigationController?.pushViewController(backHoroScope, animated: true)

          }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
       

//                 Set the text of the label
//        horoscope.text = "This is a long text that will wrap to multiple lines. The height of the label should adjust dynamically to show all the This is a long text that will wrap to multiple lines."
        
        
            }
        }

    

//
//  SageControllerView.swift
//  cma_user
//
//  Created by india on 06/03/23.
//

import Foundation
import UIKit

class SageControllerView: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var CollectionviewSage: UICollectionView!
    
    @IBAction func btn_WalletBalance(_ sender: Any) {
        let WalletBalance = self.storyboard?.instantiateViewController(withIdentifier: "PaymentHistory") as! PaymentHistoryView
        self.navigationController?.pushViewController(WalletBalance, animated: true)
    }
    
    
    @IBOutlet weak var Status: UIStackView!
    
    
    @IBOutlet weak var SagePageControl: UIPageControl!
    
    var currentcellIndex = 0
    var CarosalImages = ["rectangle", "im1", "im2", "im3", "im4"]
    var timer: Timer?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideToNext), userInfo: nil, repeats: true)
        
        SagePageControl.numberOfPages = CarosalImages.count
    }
    
    
    
    
    @objc func slideToNext()
    {
        if currentcellIndex < CarosalImages.count-1
        {
            currentcellIndex = currentcellIndex + 1
        }
        else{
            currentcellIndex = 0
        }
        
        SagePageControl.currentPage = currentcellIndex
        
        CollectionviewSage.scrollToItem(at: IndexPath(item: currentcellIndex, section: 0), at: .right, animated: true)
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleStatusTap(_:)))
        Status.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleStatusTap(_ gesture: UITapGestureRecognizer)  {
        let Status = self.storyboard?.instantiateViewController(withIdentifier: "AstroStatus") as! AstroStatusView
        self.navigationController?.pushViewController(Status, animated: true)
        
    }

}

    
    extension SageControllerView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return CarosalImages.count
        }
    
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell =  CollectionviewSage.dequeueReusableCell(withReuseIdentifier: "SageCell" , for: indexPath) as! SageCollectionViewCell
            cell.SageImage.image = UIImage(named: CarosalImages[indexPath.row])
            return cell
        }
    
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: CollectionviewSage.frame.width , height: CollectionviewSage.frame.height)
        }
}

//
//  UIExploreScreenView.swift
//  cma_user
//
//  Created by india on 24/02/23.
//

import Foundation
import UIKit

class UIExploreScreenView: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var Aris: UIView!
    
    @IBOutlet weak var status: UIButton!
    
    
    @IBOutlet var CollectionViewIB: UICollectionView!
    
    @IBOutlet var newPageControll: UIPageControl!
    
    @IBAction func btn_showProfile(_ sender: Any) {
        let showProfile = self.storyboard?.instantiateViewController(withIdentifier: "userprofile") as! UserProfileView
        self.navigationController?.pushViewController(showProfile, animated: true)
    }
    
    
    @IBAction func btn_WalletBalance(_ sender: Any) {
        let WalletBalance = self.storyboard?.instantiateViewController(withIdentifier: "PaymentHistory") as! PaymentHistoryView
        self.navigationController?.pushViewController(WalletBalance, animated: true)
    }
    
        
    //    var currentcellIndex = 0
    //    var nakshtraImages = ["rectangle","im1","im2","im3","im4"]
    //    var timer: Timer?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        status.layer.cornerRadius = 10
        status.layer.masksToBounds = true
        
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleArisTap(_:)))
        Aris.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleArisTap(_ gesture: UITapGestureRecognizer)  {
        let Aris = self.storyboard?.instantiateViewController(withIdentifier: "Horoscope") as! HoroscopeView
        self.navigationController?.pushViewController(Aris, animated: true)
        
    }
    
}
        
       

        
        
        
//        timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(slideToNext), userInfo: nil, repeats: true)
//
//        newPageControll.numberOfPages = nakshtraImages.count
//    }
//
//    @objc func slideToNext()
//    {
//        if currentcellIndex < nakshtraImages.count-1
//        {
//            currentcellIndex = currentcellIndex + 1
//        }
//        else{
//            currentcellIndex = 0
//        }
//
//        newPageControll.currentPage = currentcellIndex
//
//        CollectionViewIB.scrollToItem(at: IndexPath(item: currentcellIndex, section: 0), at: .right, animated: true)
//    }
//
//
//   }
//
//
//
//
//
//extension UIExploreScreenView: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return nakshtraImages.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell =  CollectionViewIB.dequeueReusableCell(withReuseIdentifier: "mycell" , for: indexPath) as! NewCollectionViewCell
//        cell.myImage.image = UIImage(named: nakshtraImages[indexPath.row])
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: CollectionViewIB.frame.width , height: CollectionViewIB.frame.height)
//    }

//}






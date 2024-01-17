//
//  ViewController.swift
//  CMA_Astrologer
//
//  Created by KoptoTech on 18/02/23.
//

//import UIKit
//
//class ViewController: UIViewController {
//
//    @IBOutlet var myCollectionView: UICollectionView!
//
//    let productTypeName: [String]=["My Profile","Chat","Call","Video Call","Live Broadcast","Total Earnings","E-Puja","CMA Office","Settings","Broadcaster Details"]
//
//    let productImages:[String] = ["user","chat","call","video","profiles","rupee","e_puja","share","settings","like"]
//
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//}
//extension ViewController: UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return productTypeName.count
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = myCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCollectionViewCell
//        cell.myImage.image = UIImage(named: productImages[indexPath.row])
//        cell.myProfile.text = productTypeName[indexPath.row]
//        cell.layer.cornerRadius = 10
//
//        return cell
//    }
//
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//
//        let size = (collectionView.frame.size.width-15)/3
//        return CGSize(width: size, height: size)
//    }
//
//}

import UIKit

class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    
    @IBOutlet var myCollectionView: UICollectionView!
    
    let productTypeName: [String] = ["My Profile","Chat","Call","Video Call","Live Broadcast","Total Earnings","E-Puja","CMA Office","Settings","Broadcaster Details"]
    
    let productImages: [String] = ["user","chat","call","video","profiles","rupee","e_puja","share","settings","like"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up the data source and delegate for the collection view
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        
        // Register the custom cell class for the collection view
        myCollectionView.register(MyCollectionViewCell.self, forCellWithReuseIdentifier: "cellView")
    }
//}

//extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout
//{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = self.myCollectionView.dequeueReusableCell(withReuseIdentifier: "cellView", for: indexPath)
//        as! MyCollectionViewCell
//        print(indexPath.row)
//        print(productImages[indexPath.row])
//
//        cell.myImage.image = UIImage(named: self.productImages[indexPath.row])
//        cell.myProfile.text = productTypeName[indexPath.row]
//
        cell.layer.cornerRadius = 10
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let size = (collectionView.frame.size.width-15)/3
        return CGSize(width: size, height: size)
    }
}


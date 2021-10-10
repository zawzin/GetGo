//
//  BookingViewController.swift
//  GetGo
//
//  Created by Zaw Zin Phyo on 10/10/2021.
//

import UIKit

class BookingViewController: UIViewController, Storyboarded {

    @IBOutlet weak var btnAddToCalendar: UIButton!
    @IBOutlet weak var btnExtend: UIButton!
    
    @IBOutlet weak var colCarImage: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var btnGetDirection: UIButton!
    @IBOutlet weak var colCarPark: UICollectionView!
    
    static var storyboardName: String = Constants.Storyboard.main
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setUpView()
        setUpCollectionView()
    }
    
    fileprivate func setUpView() {
        
        btnAddToCalendar.layer.cornerRadius = 5
        btnAddToCalendar.layer.borderWidth = 1
        btnAddToCalendar.layer.borderColor = UIColor.black.cgColor
        
        btnExtend.layer.cornerRadius = 5
        btnExtend.layer.borderWidth = 1
        btnExtend.layer.borderColor = UIColor.black.cgColor
        
        btnGetDirection.layer.cornerRadius = 5
        btnGetDirection.layer.borderWidth = 1
        btnGetDirection.layer.borderColor = UIColor.black.cgColor
    }
    
    fileprivate func setUpCollectionView() {
        colCarImage.dataSource = self
        colCarImage.delegate = self
        colCarImage.register(nib: CarImageCell.className, bundle: nil)
        pageControl.numberOfPages = 3
        
        colCarPark.dataSource = self
        colCarPark.delegate = self
        colCarPark.register(nibs: [CarParkCell.className, CarParkCountCell.className], bundle: nil)
    }
    
    @IBAction func didTappedBack(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
}

extension BookingViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.colCarImage {
            return 3
        }
        
        return 4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == self.colCarImage {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarImageCell.className, for: indexPath) as! CarImageCell
            
            return cell
        } else {
            
            if indexPath.row == 3 {
                let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarParkCountCell.className, for: indexPath) as! CarParkCountCell
                
                return cell
            }
            
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CarParkCell.className, for: indexPath) as! CarParkCell
            
            return cell
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if collectionView == self.colCarImage {
            return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
        }
        
        return CGSize(width: 44, height: 44)
    }
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        if collectionView == colCarImage {
            self.pageControl.currentPage = indexPath.row
        }
        
    }
}

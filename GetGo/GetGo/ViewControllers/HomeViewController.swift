//
//  ViewController.swift
//  GetGo
//
//  Created by Zaw Zin Phyo on 10/10/2021.
//

import UIKit
import MapKit

class HomeViewController: UIViewController, Storyboarded {

    static var storyboardName: String = Constants.Storyboard.main
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var viewInfo: UIView!
    @IBOutlet weak var btnNoti: UIButton!
    @IBOutlet weak var btnLocate: UIButton!
    @IBOutlet weak var btnGo: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.setUpView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }

    fileprivate func setUpView() {
        btnNoti.roundedShadowDefault(radius: btnNoti.frame.height / 2)
        btnLocate.roundedShadowDefault(radius: btnLocate.frame.height / 2)
        viewInfo.roundedShadowDefault(radius: 5)
        btnGo.roundCorners(corners: .bottomRight, radius: 5)
    }
    
    @IBAction func didTappedGo(_ sender: Any) {
        let vc = SearchResultsViewController.instantiate()
        vc.hidesBottomBarWhenPushed = true
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


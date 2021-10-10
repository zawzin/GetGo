//
//  CarParkCountCell.swift
//  GetGo
//
//  Created by Zaw Zin Phyo on 10/10/2021.
//

import UIKit

class CarParkCountCell: UICollectionViewCell {
    
    @IBOutlet weak var viewBG: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        viewBG.layer.cornerRadius = 5
        viewBG.layer.borderColor = UIColor.black.cgColor
        viewBG.layer.borderWidth = 1
    }

}

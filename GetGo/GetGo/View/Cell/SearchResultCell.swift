//
//  SearchResultCell.swift
//  GetGo
//
//  Created by Zaw Zin Phyo on 10/10/2021.
//

import UIKit

class SearchResultCell: UITableViewCell {

    @IBOutlet weak var viewBg: UIView!
    @IBOutlet weak var ivCar: UIImageView!
    @IBOutlet weak var viewDistance: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
        selectionStyle = .none
        
        viewDistance.layer.borderColor = UIColor.green.cgColor
        viewDistance.layer.borderWidth = 0.3
        viewDistance.layer.cornerRadius = 2
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  UIView.swift
//  GetGo
//
//  Created by Zaw Zin Phyo on 10/10/2021.
//

import UIKit

extension UIView {
    
    func roundedShadowDefault(radius: CGFloat) {
        roundedShadow(opacity: 0.5, offset: CGSize(width: 1, height: 2), color: .lightGray, cornerRadius: radius)
    }
    
    func roundedShadow(opacity: Float, offset:CGSize, color: UIColor, cornerRadius: CGFloat) {
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = offset
        self.layer.shadowOpacity = opacity
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        self.layer.masksToBounds = false
    }
    
    func roundCorners(corners: UIRectCorner, radius: CGFloat) {
       let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
       let mask = CAShapeLayer()
       mask.path = path.cgPath
       layer.mask = mask
    }
    
    @IBInspectable var viewCornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        } set {
            self.layer.cornerRadius = newValue
        }
    }
}

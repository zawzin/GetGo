//
//  NSObject.swift
//  GetGo
//
//  Created by Zaw Zin Phyo on 10/10/2021.
//

import Foundation

public extension NSObject {
    var className: String {
        return String(describing: type(of: self))
    }
    
    class var className: String {
        return String(describing: self)
    }
}

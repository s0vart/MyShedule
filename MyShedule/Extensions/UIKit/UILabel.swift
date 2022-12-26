//
//  UILabel.swift
//  MyShedule
//
//  Created by Mark Nevmerzhitskiy on 24.12.2022.
//

import UIKit

extension UILabel {
    
    convenience init(text: String, font: UIFont?, aligment: NSTextAlignment = .left) {
        self.init()
        
        self.text = text
        self.font = font
        self.textColor = .black
        self.textAlignment = aligment
        self.adjustsFontSizeToFitWidth = true
        self.translatesAutoresizingMaskIntoConstraints = false
        //self.backgroundColor = .red
    }
}

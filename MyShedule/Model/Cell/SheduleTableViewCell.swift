//
//  SheduleTableViewCell.swift
//  MyShedule
//
//  Created by Mark Nevmerzhitskiy on 17.12.2022.
//

import UIKit

class SheduleTableViewCell: UITableViewCell {
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupConstrate()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let lessonName: UILabel = {
        let label = UILabel()
        label.text = "Programming"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next", size: 20)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
       // label.backgroundColor = .red
        
        return label
    }()
    
    let teacherName: UILabel = {
        let label = UILabel()
        label.text = "Tony Stark Little"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next", size: 20)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
       // label.backgroundColor = .red
        
        return label
    }()
    
    func setupConstrate() {
        
        self.addSubview(lessonName)
        NSLayoutConstraint.activate([
            lessonName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            lessonName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            lessonName.widthAnchor.constraint(equalToConstant: self.frame.width / 2 - 10),
            lessonName.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        self.addSubview(teacherName)
        NSLayoutConstraint.activate([
            teacherName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            teacherName.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            teacherName.widthAnchor.constraint(equalToConstant: self.frame.width / 2 - 10),
            teacherName.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
}

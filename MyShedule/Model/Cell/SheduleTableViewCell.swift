//
//  SheduleTableViewCell.swift
//  MyShedule
//
//  Created by Mark Nevmerzhitskiy on 17.12.2022.
//

import UIKit

class SheduleTableViewCell: UITableViewCell {
    
    //MARK: - The Initializer
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
            self.setupConstrate()
            self.selectionStyle = .none
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Public Properties
    
    let lessonName = UILabel(text: "Programming", font: UIFont(name: "Avenir Next Demi Bold", size: 20), aligment: .left)
    let teacherName = UILabel(text: "Naumov Aleksandr Viktorovich", font: UIFont(name: "Avenir Next", size: 20), aligment: .right)
    let lessonTime = UILabel(text: "08:00", font: UIFont(name: "Avenir Next Demi Bold", size: 20), aligment: .left)
    let typeLabel = UILabel(text: "Type:", font: UIFont(name: "Avenir Next Demi Bold", size: 20), aligment: .right)
    let lessonType = UILabel(text: "Lection", font: UIFont(name: "Avenir Next", size: 20), aligment: .left)
    let corpsLabel = UILabel(text: "Corps:", font: UIFont(name: "Avenir Next Demi Bold", size: 20), aligment: .right)
    let lessonCorps = UILabel(text: "1", font: UIFont(name: "Avenir Next", size: 20), aligment: .left)
    let roomLabel = UILabel(text: "Room:", font: UIFont(name: "Avenir Next Demi Bold", size: 20), aligment: .right)
    let lessonRoom = UILabel(text: "223", font: UIFont(name: "Avenir Next", size: 20), aligment: .left)
    
    //MARK: - Setup Constraints
    
    func setupConstrate() {
        
        let topStackView = UIStackView(arrangedSubviews: [lessonName, teacherName], axis: .horizontal, spacing: 10, distribution: .fillEqually)
        let bottomStackView = UIStackView(arrangedSubviews: [typeLabel, lessonType, corpsLabel, lessonCorps, roomLabel, lessonRoom], axis: .horizontal, spacing: 5, distribution: .fillEqually)
        
        self.addSubview(topStackView)
        NSLayoutConstraint.activate([
            topStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            topStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            topStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            topStackView.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        self.addSubview(lessonTime)
        NSLayoutConstraint.activate([
            lessonTime.topAnchor.constraint(equalTo: topStackView.bottomAnchor, constant: 10),
            lessonTime.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            lessonTime.widthAnchor.constraint(equalToConstant: 100),
            lessonTime.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        self.addSubview(bottomStackView)
        NSLayoutConstraint.activate([
            bottomStackView.topAnchor.constraint(equalTo: topStackView.bottomAnchor, constant: 10),
            bottomStackView.leadingAnchor.constraint(equalTo: lessonTime.trailingAnchor, constant: 5),
            bottomStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            bottomStackView.heightAnchor.constraint(equalToConstant: 25)
        ])
    }
}

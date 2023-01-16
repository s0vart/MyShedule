//
//  TasksTableViewCell.swift
//  MyShedule
//
//  Created by Mark Nevmerzhitskiy on 25.12.2022.
//

import UIKit

class TasksTableViewCell: UITableViewCell {
    
    //MARK: - The Initializer
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
            self.setupConstrate()
        }
        
        self.selectionStyle = .none
        self.taskDiscription.numberOfLines = 0
        readyButton.addTarget(self, action: #selector(readyButtonTapped), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Public Properties
    
    let taskName = UILabel(text: "Programming", font: .avenirNextDemiBold20())
    let taskDiscription = UILabel(text: "Creates new view and filling cells", font: .avenirNext14())
    
    let readyButton : UIButton = {
        let button = UIButton()
        button.setBackgroundImage(UIImage(systemName: "checkmark.square"), for: .normal)
        button.tintColor = .black
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    weak var cellTaskDelegate: PressReadyButtonTaskProtocol?
    var index: IndexPath?
    
    //MARK: - OBJC Method
    
    @objc func readyButtonTapped() {
        guard let index = index else { return }
        cellTaskDelegate?.readyButtonTapped(indexPath: index)
        
        if readyButton.backgroundImage(for: .normal) == UIImage(systemName: "checkmark.square") {
            readyButton.setBackgroundImage(UIImage(systemName: "checkmark.square.fill"), for: .normal)
        } else {
            readyButton.setBackgroundImage(UIImage(systemName: "checkmark.square"), for: .normal)
        }
    }
    
    //MARK: - Setup Constraints
    
    func setupConstrate() {
        
        self.addSubview(readyButton)
        NSLayoutConstraint.activate([
            readyButton.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            readyButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15),
            readyButton.widthAnchor.constraint(equalToConstant: 30),
            readyButton.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        self.addSubview(taskName)
        NSLayoutConstraint.activate([
            taskName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            taskName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            taskName.trailingAnchor.constraint(equalTo: readyButton.leadingAnchor, constant: -5),
            taskName.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        self.addSubview(taskDiscription)
        NSLayoutConstraint.activate([
            taskDiscription.topAnchor.constraint(equalTo: taskName.bottomAnchor, constant: 5),
            taskDiscription.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            taskDiscription.trailingAnchor.constraint(equalTo: readyButton.leadingAnchor, constant: -5),
            taskDiscription.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5)
        ])
        
    }
}


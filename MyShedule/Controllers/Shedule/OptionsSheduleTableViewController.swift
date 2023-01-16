//
//  OprionsViewController.swift
//  MyShedule
//
//  Created by Mark Nevmerzhitskiy on 04.01.2023.
//

import UIKit

class OptionsSheduleTableViewController: UITableViewController {
    
    //MARK: - Public Properties
    
    let idOptionsCell = "idOptionsCell"
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Options"
        view.backgroundColor = .white
        tabBarController?.tabBar.isHidden = true
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = #colorLiteral(red: 0.8039215686, green: 0.831372549, blue: 0.8745098039, alpha: 1)
        tableView.separatorStyle = .none
        
        tableView.register(OptionsSheduleTableViewCell.self, forCellReuseIdentifier: "idOptionsCell")
    }
    
    //MARK: TableViewCell
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 2
        case 1: return 4
        case 2: return 1
        case 3: return 1
        default:
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idOptionsCell, for: indexPath) as! OptionsSheduleTableViewCell
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
}

//
//  HomeViewController.swift
//  numericalAnalysis
//
//  Created by Kamil Sosna on 16/04/2019.
//  Copyright © 2019 Kamil Sosna. All rights reserved.
//

import UIKit

class HomeViewController: UITableViewController, Storyboarded {
    var coordinator: HomeCoordinator?
    
    let dataSource = HomeDataSource()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        assert(coordinator != nil, "Coordinator has to be set before presenting controller")
        title = "Home"
        tableView.dataSource = dataSource
        tableView.delegate = dataSource
        dataSource.delegate = self
        
    }
    
    func startTopic(title: String) {
        coordinator?.startTopic(title: title)
    }
}

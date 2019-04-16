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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        assert(coordinator != nil, "Coordinator has to be set before presenting controller")
        title = "Home"
        
        
    }
}

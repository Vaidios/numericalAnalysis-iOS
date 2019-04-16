//
//  ViewController.swift
//  numericalAnalysis
//
//  Created by Kamil Sosna on 15/04/2019.
//  Copyright © 2019 Kamil Sosna. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController, Storyboarded {
    let home = HomeCoordinator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewControllers = [home.navigationController]
    }


}


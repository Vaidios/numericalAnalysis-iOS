//
//  HomeCoordinator.swift
//  numericalAnalysis
//
//  Created by Kamil Sosna on 16/04/2019.
//  Copyright © 2019 Kamil Sosna. All rights reserved.
//

import UIKit

class HomeCoordinator: Coordinator {
    var navigationController: CoordinatedNavigationController
    
    init(navigationController: CoordinatedNavigationController = CoordinatedNavigationController()) {
        self.navigationController = navigationController
        navigationController.navigationBar.prefersLargeTitles = true
        navigationController.coordinator = self
        
        let viewController = HomeViewController.instantiate()
        viewController.tabBarItem = UITabBarItem(title: "Home", image: UIImage(contentsOfFile: "Home"), tag: 0)
        viewController.coordinator = self
        
        navigationController.viewControllers = [viewController]
    }
    func startTopic(using viewController: UIViewController) {
        navigationController.pushViewController(viewController, animated: true)
    }
    func startTopic(title: String) {
        let viewController = TopicViewController.instantiate()
        viewController.coordinator = self
        startTopic(using: viewController)
    }
}

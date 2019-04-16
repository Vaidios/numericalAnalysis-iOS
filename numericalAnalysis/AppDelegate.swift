//
//  AppDelegate.swift
//  numericalAnalysis
//
//  Created by Kamil Sosna on 15/04/2019.
//  Copyright © 2019 Kamil Sosna. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var tabBarController: MainTabBarController?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window?.backgroundColor = .white
        tabBarController = MainTabBarController()
        window?.rootViewController = tabBarController
        return true
    }


}


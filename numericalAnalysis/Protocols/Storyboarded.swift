//
//  Storyboarded.swift
//  numericalAnalysis
//
//  Created by Kamil Sosna on 16/04/2019.
//  Copyright © 2019 Kamil Sosna. All rights reserved.
//

import UIKit

protocol Storyboarded { }

extension Storyboarded where Self: UIViewController {
    //Creates a ViewController from our storyboard. This relies on VC having the same identifier as class name. This method should't be overridden
    static func instantiate() -> Self {
        let storyboardIdentifier = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(withIdentifier: storyboardIdentifier) as! Self
    }
}

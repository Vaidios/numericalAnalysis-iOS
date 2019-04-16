//
//  Coordinator.swift
//  numericalAnalysis
//
//  Created by Kamil Sosna on 16/04/2019.
//  Copyright © 2019 Kamil Sosna. All rights reserved.
//

import UIKit

protocol Coordinator: AnyObject {
    var navigationController: CoordinatedNavigationController { get set }
}

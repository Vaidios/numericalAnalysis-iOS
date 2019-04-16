//
//  TopicViewController.swift
//  numericalAnalysis
//
//  Created by Kamil Sosna on 16/04/2019.
//  Copyright © 2019 Kamil Sosna. All rights reserved.
//

import UIKit
import iosMath

class TopicViewController: UIViewController, Storyboarded {
    var latexLabel: MTMathUILabel?
    var coordinator: HomeCoordinator?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        assert(coordinator != nil, "You must set coordinator first")
        title = "Topic"
        navigationItem.largeTitleDisplayMode = .never
        print(iosMathVersionNumber)
        latexLabel = MTMathUILabel()
        latexLabel?.bounds.size.width = view.bounds.width - 20
        latexLabel?.bounds.size.height = view.bounds.height - 40
        latexLabel?.center = view.center
        latexLabel?.alpha = 1
        latexLabel?.latex = "x = \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a}"
        latexLabel?.isHidden = false
        latexLabel?.contentInsets = UIEdgeInsets(top: 100, left: 10, bottom: 0, right: 20)
        
        view.addSubview(latexLabel!)
        
        //view.addSubview(latexLabel!)
    }
}

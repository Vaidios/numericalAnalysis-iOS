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
    
    @IBOutlet var equationView: UIView!
    
    var latexLabel: MTMathUILabel?
    var coordinator: HomeCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        equationView.backgroundColor = .red
        view.backgroundColor = .white
        assert(coordinator != nil, "You must set coordinator first")
        navigationItem.largeTitleDisplayMode = .never
        print(iosMathVersionNumber)
        latexLabel = MTMathUILabel()
        latexLabel?.bounds.size.width = equationView.bounds.width
        latexLabel?.bounds.size.height = equationView.bounds.height
        latexLabel?.center = CGPoint(x: equationView.bounds.size.width / 2, y: equationView.bounds.size.height / 2)
        print(equationView.center)
        latexLabel?.alpha = 1
        latexLabel?.latex = "x = \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a}"
        latexLabel?.isHidden = false
        latexLabel?.textAlignment = MTTextAlignment.center
        latexLabel?.backgroundColor = .blue
        //latexLabel?.contentInsets = UIEdgeInsets(top: 100, left: 10, bottom: 0, right: 20)
        //scrollView.addSubview(latexLabel!)
        //latexLabel?.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 400).isActive = true
        //latexLabel?.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 1000).isActive = true
        //view.addSubview(latexLabel!)
        equationView.addSubview(latexLabel!)
    }
}

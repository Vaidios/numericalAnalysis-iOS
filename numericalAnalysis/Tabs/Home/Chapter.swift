//
//  Chapter.swift
//  numericalAnalysis
//
//  Created by Kamil Sosna on 16/04/2019.
//  Copyright © 2019 Kamil Sosna. All rights reserved.
//

import UIKit

struct Chapter: Decodable {
    var name: String
    var sections: [String]
    
    lazy var bundleNameSections: [String] = {
        sections.map { $0.bundleName }
    }()
}

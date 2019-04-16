//
//  HomeDataSource.swift
//  numericalAnalysis
//
//  Created by Kamil Sosna on 16/04/2019.
//  Copyright © 2019 Kamil Sosna. All rights reserved.
//

import UIKit

class HomeDataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    weak var delegate: HomeViewController?
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return NumericalAnalysis.chapters.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return NumericalAnalysis.chapters[section].name
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return NumericalAnalysis.chapters[section].sections.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let chapter = NumericalAnalysis.chapters[indexPath.section]
        let section = chapter.sections[indexPath.row]
        cell.textLabel?.text = section
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedChapter = NumericalAnalysis.chapters[indexPath.section]
        let selectedSection = selectedChapter.sections[indexPath.row]
        delegate?.startTopic(title: selectedSection)
    }
}

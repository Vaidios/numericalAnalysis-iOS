//
//  TopicViewController.swift
//  numericalAnalysis
//
//  Created by Kamil Sosna on 16/04/2019.
//  Copyright © 2019 Kamil Sosna. All rights reserved.
//

import UIKit
import iosMath
import SwiftDataTables

class TopicViewController: UIViewController, Storyboarded {
    
    @IBOutlet var equationView: UIView!
    @IBOutlet var tableView: UIView!
    lazy var dataTable = makeDataTable()
    var dataSource: DataTableContent = []
    var latexLabel = MTMathUILabel()
    var coordinator: HomeCoordinator?
    override func viewDidLoad() {
        super.viewDidLoad()
        equationView.backgroundColor = .red
        view.backgroundColor = .white
        assert(coordinator != nil, "You must set coordinator first")
        navigationItem.largeTitleDisplayMode = .never
        print(iosMathVersionNumber)
        configEquation()
//        table.backgroundColor = .white
//        table.bounds.size = tableView.bounds.size
//        table.center = CGPoint(x: tableView.bounds.size.width / 2, y: tableView.bounds.size.height / 2)
//        print(table.bounds.size)
//        tableView.addSubview(table)
        //title = "Streaming fans"
        //dataTable.center = CGPoint(x: tableView.bounds.size.width / 2, y: -200)
        equationView.addSubview(latexLabel)
        tableView.addSubview(dataTable)
        
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        configEquation()
        dataTable.backgroundColor = .gray
        dataTable.frame = tableView.bounds
        tableView.backgroundColor = .blue
        addDataSourceAfter()
        dataTable.reload()
    }
    private func makeDataTable() -> SwiftDataTable {
        let dataTable = SwiftDataTable(dataSource: self)
        dataTable.delegate = self
        dataTable.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        return dataTable
    }
    private func configEquation() {
        latexLabel = MTMathUILabel()
        latexLabel.frame = equationView.bounds
        print(equationView.center)
        latexLabel.alpha = 1
        latexLabel.latex = "x = \\frac{-b \\pm \\sqrt{b^2-4ac}}{2a}"
        latexLabel.isHidden = false
        latexLabel.textAlignment = MTTextAlignment.center
        latexLabel.backgroundColor = .blue
        
    }
    public func addDataSourceAfter(){
        
        self.dataSource = [
            [
                DataTableValueType.string("Pavan"),
                DataTableValueType.string("Juice"),
                DataTableValueType.string("Swift and Php"),
                DataTableValueType.string("Be a game publisher"),
                DataTableValueType.float(175.25)
            ],
            [
                DataTableValueType.string("NoelDavies"),
                DataTableValueType.string("Water"),
                DataTableValueType.string("Php and Javascript"),
                DataTableValueType.string("'Be a fucking paratrooper machine'"),
                DataTableValueType.float(185.80)
            ],
            [
                DataTableValueType.string("Redsaint"),
                DataTableValueType.string("Cheerwine and Dr.Pepper"),
                DataTableValueType.string("Java"),
                DataTableValueType.string("'Creating an awesome RPG Game game'"),
                DataTableValueType.float(185.42)
            ],
            [
                DataTableValueType.string("Redsaint"),
                DataTableValueType.string("Cheerwine and Dr.Pepper"),
                DataTableValueType.string("Java"),
                DataTableValueType.string("'Creating an awesome RPG Game game'"),
                DataTableValueType.float(185.42)
            ],
            [
                DataTableValueType.string("Redsaint"),
                DataTableValueType.string("Cheerwine and Dr.Pepper"),
                DataTableValueType.string("Java"),
                DataTableValueType.string("'Creating an awesome RPG Game game'"),
                DataTableValueType.float(185.42)
            ],
        ]
        dataTable.reload()
    }
    let headerTitles = ["Name", "Fav Beverage", "Fav language", "Short term goals", "Height"]
}

extension TopicViewController: SwiftDataTableDataSource {
    func numberOfColumns(in: SwiftDataTable) -> Int {
        return 4
    }
    
    func numberOfRows(in: SwiftDataTable) -> Int {
        return self.dataSource.count
    }
    
    func dataTable(_ dataTable: SwiftDataTable, dataForRowAt index: NSInteger) -> [DataTableValueType] {
        return self.dataSource[index]
    }
    
    func dataTable(_ dataTable: SwiftDataTable, headerTitleForColumnAt columnIndex: NSInteger) -> String {
        return self.headerTitles[columnIndex]
    }
    
    
}

extension TopicViewController: SwiftDataTableDelegate {
    func didSelectItem(_ dataTable: SwiftDataTable, indexPath: IndexPath) {
        print("Did select item at index path: \(indexPath) data value: \(dataTable.data(for: indexPath))")
    }
}

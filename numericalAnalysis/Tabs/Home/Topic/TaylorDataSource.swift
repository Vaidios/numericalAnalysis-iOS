//
//  TaylorDataSource.swift
//  numericalAnalysis
//
//  Created by Kamil Sosna on 16/04/2019.
//  Copyright © 2019 Kamil Sosna. All rights reserved.
//

import UIKit
import SwiftDataTables

class TaylorDataSource: SwiftDataTableDataSource  {
    //let forwardData: DataTableContent?
    func numberOfColumns(in: SwiftDataTable) -> Int {
        return 10
    }
    
    func numberOfRows(in: SwiftDataTable) -> Int {
        return 10
    }
    
    func dataTable(_ dataTable: SwiftDataTable, dataForRowAt index: NSInteger) -> [DataTableValueType] {
        return [.int(2)]
    }
    
    func dataTable(_ dataTable: SwiftDataTable, headerTitleForColumnAt columnIndex: NSInteger) -> String {
        return "test"
    }
    
    func calculateForward() {
        
    }
}

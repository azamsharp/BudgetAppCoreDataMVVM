//
//  Budget+Extensions.swift
//  BudgetApp
//
//  Created by Mohammad Azam on 11/8/21.
//

import Foundation
import CoreData

extension Budget: BaseModel {
    
    static var all: NSFetchRequest<Budget> {
        let request = Budget.fetchRequest()
        request.sortDescriptors = []
        return request 
    }
    
}

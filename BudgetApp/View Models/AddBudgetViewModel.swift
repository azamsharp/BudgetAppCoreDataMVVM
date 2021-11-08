//
//  AddBudgetViewModel.swift
//  BudgetApp
//
//  Created by Mohammad Azam on 11/8/21.
//

import Foundation
import CoreData

class AddBudgetViewModel: ObservableObject {
    
    @Published var name: String = ""
    @Published var total: String = ""
    
    var context: NSManagedObjectContext
    
    init(context: NSManagedObjectContext) {
        self.context = context
    }
    
    func save() {
        
        do {
            let budget = Budget(context: context)
            budget.title = name
            budget.total = Double(total) ?? 0
            try budget.save()
        } catch {
            print(error)
        }
        
    }
    
}

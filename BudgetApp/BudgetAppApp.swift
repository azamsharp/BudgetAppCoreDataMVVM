//
//  BudgetAppApp.swift
//  BudgetApp
//
//  Created by Mohammad Azam on 11/8/21.
//

import SwiftUI

@main
struct BudgetAppApp: App {
    var body: some Scene {
        WindowGroup {
            
            let viewContext = CoreDataManager.shared.persistentStoreContainer.viewContext
            ContentView(vm: BudgetListViewModel(context: viewContext))
                .environment(\.managedObjectContext, viewContext)
            
        }
    }
}

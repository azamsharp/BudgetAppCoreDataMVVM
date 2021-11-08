//
//  AddBudgetScreen.swift
//  BudgetApp
//
//  Created by Mohammad Azam on 11/8/21.
//

import SwiftUI

struct AddBudgetScreen: View {
    
    @Environment(\.presentationMode) var presentationMode
    @ObservedObject var vm: AddBudgetViewModel
    
    init(vm: AddBudgetViewModel) {
        self.vm = vm
    }
    
    var body: some View {
        Form {
            TextField("Enter title", text: $vm.name)
            TextField("Enter total", text: $vm.total)
            
            Button("Save") {
                vm.save()
                presentationMode.wrappedValue.dismiss()
            }.centerHorizontally()
            
            .navigationTitle("Add New Budget")
        }
    }
}

struct AddBudgetScreen_Previews: PreviewProvider {
    static var previews: some View {
        
        let viewContext = CoreDataManager.shared.persistentStoreContainer.viewContext
        NavigationView {
            AddBudgetScreen(vm: AddBudgetViewModel(context: viewContext))
        }
    }
}

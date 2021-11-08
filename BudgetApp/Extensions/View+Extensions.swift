//
//  View+Extensions.swift
//  BudgetApp
//
//  Created by Mohammad Azam on 11/8/21.
//

import Foundation
import SwiftUI

extension View {
    
    func centerHorizontally() -> some View {
        HStack {
            Spacer()
            self
            Spacer() 
        }
    }
    
}

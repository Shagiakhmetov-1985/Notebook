//
//  Binding.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 04.04.2023.
//

import SwiftUI

extension Binding {
    func onChange(_ handler: @escaping(Value) -> Void) -> Binding<Value> {
        Binding(
            get: { self.wrappedValue },
            set: { newValue in
                self.wrappedValue = newValue
                handler(newValue)
            })
    }
}

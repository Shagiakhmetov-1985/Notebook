//
//  UIApplication.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 04.04.2023.
//

import UIKit

extension UIApplication {
    func endEditing() {
        sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil)
    }
}

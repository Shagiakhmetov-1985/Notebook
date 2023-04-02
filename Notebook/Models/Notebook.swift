//
//  File.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 01.04.2023.
//

import Foundation

struct Notebook: Identifiable {
    let id: String = UUID().uuidString
    let theme: String
    let date: String
    let text: String
}

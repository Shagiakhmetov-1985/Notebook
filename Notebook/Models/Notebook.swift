//
//  File.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 01.04.2023.
//

import Foundation

struct Notebook: Identifiable, Codable {
    let id: String
    var theme: String
    var date: String
    var text: String
    
    init(id: String = UUID().uuidString, theme: String, date: String, text: String) {
        self.id = id
        self.theme = theme
        self.date = date
        self.text = text
    }
    
    func updateNote(theme: String, date: String, text: String) -> Notebook {
        return Notebook(id: id, theme: theme, date: date, text: text)
    }
}

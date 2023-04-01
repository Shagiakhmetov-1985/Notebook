//
//  MainView.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 31.03.2023.
//

import SwiftUI

struct MainView: View {
    private let notes = [
        Notebook(theme: "My first note", date: "31.03.2023", text: ""),
        Notebook(theme: "My favorite movie", date: "1.04.2023", text: "")
    ]
    
    var body: some View {
        NavigationView {
            List(notes, id: \.theme) { note in
                CustomCell(text: note.theme, date: note.date)
            }
            .navigationTitle("Notebook")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        AddNewNote(theme: "", description: "")
                    } label: {
                        Image(systemName: "square.and.pencil")
                            .foregroundColor(Color(
                                red: 220/255,
                                green: 190/255,
                                blue: 30/255))
                    }

                }
                ToolbarItem(placement: .bottomBar) {
                    Text("Total notes: \(notes.count)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}

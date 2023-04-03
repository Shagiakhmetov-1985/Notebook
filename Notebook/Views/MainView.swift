//
//  MainView.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 31.03.2023.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var noteViewModel: NoteViewModel
    @State var isPush = false
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(noteViewModel.notes) { note in
                    NavigationLink {
                        EditNote(theme: note.theme, text: note.text)
                    } label: {
                        CustomCell(theme: note.theme, date: note.date)
                    }
                }
                .onDelete(perform: noteViewModel.deleteNote)
            }
            .navigationTitle("Notebook")
            .listStyle(.sidebar)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink {
                        AddNewNote(theme: "", description: "")
                    } label: {
                        Image(systemName: "square.and.pencil")
                    }
                }
                ToolbarItem(placement: .bottomBar) {
                    Text("\(noteViewModel.notes.count) notes")
                }
            }
        }
        .tint(Color(red: 220/255, green: 190/255, blue: 30/255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(NoteViewModel())
    }
}

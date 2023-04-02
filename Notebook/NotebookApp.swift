//
//  NotebookApp.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 31.03.2023.
//

import SwiftUI

@main
struct NotebookApp: App {
    @StateObject var noteViewModel: NoteViewModel = NoteViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(noteViewModel)
        }
    }
}

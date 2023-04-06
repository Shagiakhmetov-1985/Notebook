//
//  NoNotesView.swift
//  Notebook
//
//  Created by Marat Shagiakhmetov on 06.04.2023.
//

import SwiftUI

struct NoNotesView: View {
    @State var animate = false
    
    let yellowColor = Color(red: 220/255, green: 190/255, blue: 30/255)
    
    var body: some View {
        ScrollView {
            VStack(spacing: 25) {
                Text("There are no notes!")
                    .font(.title)
                    .fontWeight(.bold)
                VStack {
                    Text("You need to tap on the button ") +
                    Text(Image(systemName: "square.and.pencil"))
                        .foregroundColor(yellowColor) +
                    Text(" for create new note to your notebook. ") +
                    Text("Or click on the button below to create a note immediately.")
                }
                NavigationLink {
                    AddNewNote(theme: "", date: "", description: "")
                } label: {
                    Text("Add new note")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 50)
                        .frame(maxWidth: 290)
                        .background(yellowColor)
                        .cornerRadius(10)
                }
                .scaleEffect(animate ? 1.1 : 1.0)
                .shadow(color: yellowColor.opacity(0.4),
                        radius: animate ? 20 : 10,
                        x: 0,
                        y: animate ? 40 : 20)
            }
            .frame(maxWidth: .infinity)
            .multilineTextAlignment(.center)
            .padding(20)
            .onAppear(perform: addAnimation)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    func addAnimation() {
        guard !animate else { return }
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            withAnimation(
                Animation.easeInOut(duration: 2)
                    .repeatForever()
            ) {
                animate.toggle()
            }
        }
    }
    
}

struct NoNotesView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            NoNotesView()
                .navigationTitle("Title")
        }
    }
}

//
//  ContentView.swift
//  Tu Todo
//
//  Created by Ahmed El Gndy on 29/12/2024.
//

import SwiftUI
import CoreData

struct ContentView: View {
    //MARK: Properties
    @State private var isShowingAddTodo: Bool = false
    //MARK: -Body
    var body: some View {
        NavigationStack {
            List {
                Text("Task")
            }//:list
            .navigationTitle("To do")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarItems(
                trailing:
                Button(action: {
                    isShowingAddTodo.toggle()
                },label: {
                Image(systemName: "plus")}//: Button
                 ))
            .sheet(isPresented: $isShowingAddTodo, content: {
                AddTooView()
            })
        }
    }//: navigationStack
}
//MARK: - priview

#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}

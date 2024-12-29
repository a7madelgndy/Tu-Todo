//
//  Tu_TodoApp.swift
//  Tu Todo
//
//  Created by Ahmed El Gndy on 29/12/2024.
//

import SwiftUI

@main
struct Tu_TodoApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

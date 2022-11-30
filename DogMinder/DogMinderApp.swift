//
//  DogMinderApp.swift
//  DogMinder
//
//  Created by Adrian Iraizos Mendoza on 30/11/22.
//

import SwiftUI

@main
struct DogMinderApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

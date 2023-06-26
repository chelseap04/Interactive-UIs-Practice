//
//  Interactive_UIs_PracticeApp.swift
//  Interactive UIs Practice
//
//  Created by Chelsea Poppleton on 4/14/23.
//

import SwiftUI

@main
struct Interactive_UIs_PracticeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

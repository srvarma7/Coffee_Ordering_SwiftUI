//
//  Coffee_CDApp.swift
//  Coffee-CD
//
//  Created by Sai Raghu Varma Kallepalli on 3/9/20.
//

import SwiftUI

@main
struct Coffee_CDApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

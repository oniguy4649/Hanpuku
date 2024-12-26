//
//  HanpukuApp.swift
//  Hanpuku
//
//  Created by Andrii Novakovskyi on 26.12.2024.
//

import SwiftUI
import SwiftData

@main
struct HanpukuApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            DecksList()
        }
        .modelContainer(sharedModelContainer)
    }
}

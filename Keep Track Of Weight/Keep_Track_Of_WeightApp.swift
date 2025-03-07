//
//  Keep_Track_Of_WeightApp.swift
//  Keep Track Of Weight
//
//  Created by Main on 7/10/2024.
//

import SwiftUI
import SwiftData

@main
struct Keep_Track_Of_WeightApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}

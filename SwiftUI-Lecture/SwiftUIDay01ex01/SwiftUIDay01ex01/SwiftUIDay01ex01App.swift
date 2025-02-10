//
//  SwiftUIDay01ex01App.swift
//  SwiftUIDay01ex01
//
//  Created by kyuhyeon Lee on 2/10/25.
//

import SwiftUI

@main
struct SwiftUIDay01ex01App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

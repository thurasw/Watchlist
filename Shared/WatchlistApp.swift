//
//  WatchlistApp.swift
//  Shared
//
//  Created by Thura Soe Win on 22/5/21.
//

import SwiftUI

@main
struct WatchlistApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
        .windowStyle(HiddenTitleBarWindowStyle())
        .windowToolbarStyle(UnifiedWindowToolbarStyle())
    }
}

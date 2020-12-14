//
//  CocktailApp.swift
//  Shared
//
//  Created by Michael Thornton on 12/14/20.
//

import SwiftUI

@main
struct CocktailApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

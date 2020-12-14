//
//  ContentView.swift
//  Shared
//
//  Created by Michael Thornton on 12/14/20.
//

import SwiftUI

struct ContentView: View {

    private var recipes: [Recipe] = []

    private func fetchRecipes() -> [Recipe] {
        guard
            let path = Bundle.main.path(forResource: "recipes", ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe),
            let jsonResult = try? JSONDecoder().decode([Recipe].self, from: data)
        else { return [] }
        return jsonResult
    }

    init() {
        self.recipes = fetchRecipes()

    }


    var body: some View {
        RecipeList(recipes: self.recipes)
            .navigationTitle("Recipe Count: \(recipes.count)")
    }
}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .short
    formatter.timeStyle = .medium
    return formatter
}()

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}

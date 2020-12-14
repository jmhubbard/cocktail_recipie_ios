//
//  ContentView.swift
//  Shared
//
//  Created by Michael Thornton on 12/14/20.
//

import Combine
import SwiftUI

struct ContentView: View {

    @State
    private var recipes: [Recipe] = []

    @ObservedObject
    private var recipeLoader: RecipeLoader


    init(for request: RecipeLoader.RecipeRequest = .all) {
        self.recipeLoader = RecipeLoader(for: request)
    }


    var body: some View {
        NavigationView {
            RecipeList(recipes: self.recipes)
        }
        .onReceive(recipeLoader.didChange) { recipes in
            self.recipes = recipes
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(for: .byFirstCharacter("q"))
    }
}

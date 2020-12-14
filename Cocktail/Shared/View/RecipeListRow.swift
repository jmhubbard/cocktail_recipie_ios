//
//  RecipeListRow.swift
//  Cocktail
//
//  Created by Michael Thornton on 12/14/20.
//

import SwiftUI

struct RecipeListRow: View {
    private let recipe: Recipe

    init(recipe: Recipe) {
        self.recipe = recipe
    }

    var body: some View {
        HStack {
            RemoteImage(withImageAt: recipe.imageUrl)
                .clipShape(Circle())

            VStack(alignment: .leading) {
                Text(recipe.name)
                    .font(.headline)

                Text(ListFormatter().string(from: recipe.ingredients.map(\.name)) ?? "")
                    .font(.caption)
            }
        }

    }
}



struct RecipeListRow_Previews: PreviewProvider {

    struct Shim: View {
        @State
        private var recipe: Recipe = DesignTime.recipe

        @ObservedObject
        private var recipeLoader: RecipeLoader


        init() {
            self.recipeLoader = RecipeLoader(for: .random)
        }


        var body: some View {
            RecipeListRow(recipe: self.recipe)
            .onReceive(recipeLoader.didChange) { recipes in
                self.recipe = recipes.first ?? DesignTime.recipe
            }
        }

    }


    static var previews: some View {
        Shim()
            .previewLayout(.sizeThatFits)
            .padding()
        
//        RecipeListRow(recipe: DesignTime.recipe)
//            .previewLayout(.sizeThatFits)
//            .padding()

    }
}

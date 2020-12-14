//
//  RecipeList.swift
//  Cocktail
//
//  Created by Michael Thornton on 12/14/20.
//

import SwiftUI

struct RecipeList: View {

    var recipes: [Recipe]

    var body: some View {
        List {
            ForEach(recipes) { recipe in
                Text(recipe.name)
            }
        }
        .navigationTitle("\(recipes.count)")
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        RecipeList(recipes: [])
    }
}

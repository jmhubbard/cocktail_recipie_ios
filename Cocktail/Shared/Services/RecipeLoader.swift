//
//  RecipeLoader.swift
//  Cocktail
//
//  Created by Michael Thornton on 12/14/20.
//

import Combine
import Foundation

class RecipeLoader: ObservableObject {
//    var didChange = PassthroughSubject<Data, Never>()
    var didChange = PassthroughSubject<[Recipe], Never>()
//    var data = Data() {
//        didSet {
//            didChange.send(data)
//        }
//    }
    var recipes: [Recipe] = [] {
        didSet {
            didChange.send(recipes)
        }
    }

    enum RecipeRequest {
        static let baseUrl = "https://cocktail-api.jasonhubbard.dev/api/"

        case all
        case random
        case byFirstCharacter(String)

        var urlExtension: String {
            switch self {
                case .all: return "drink-list"
                case .random: return "random-drink"
                case .byFirstCharacter(let char): return "drink-by-letter/\(char)"
            }

        }

        var url: URL? {
            URL(string: RecipeRequest.baseUrl + self.urlExtension)
        }
    }

    init(for recipeRequest: RecipeRequest) {
        guard let url = recipeRequest.url else { return }
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            guard let data = data else { return }

            if let recipes = try? JSONDecoder().decode([Recipe].self, from: data) {
                DispatchQueue.main.async {
                    self.recipes = recipes
                }
            } else if let recipe = try? JSONDecoder().decode(Recipe.self, from: data) {
                DispatchQueue.main.async {
                    self.recipes = [recipe]
                }
            }
        }
        task.resume()
    }
}

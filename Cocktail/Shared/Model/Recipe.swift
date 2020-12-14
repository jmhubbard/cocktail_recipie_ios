//
//  Recipe.swift
//  Cocktail
//
//  Created by Michael Thornton on 12/14/20.
//

import Foundation

struct Recipe: Identifiable, Decodable {
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case instructions
        case imageUrl = "image"
        case ingredients
    }

    let id: Int
    let name: String
    let instructions: String
    let imageUrl: String
    let ingredients: [Ingredient]

    init(id: Int, name: String, instructions: String, imageUrl: String, ingredients: [Ingredient]) {
        self.id = id
        self.name = name
        self.instructions = instructions
        self.imageUrl = imageUrl
        self.ingredients = ingredients
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Recipe.CodingKeys.self)
        self.id = try container.decode(Int.self, forKey: .id)
        self.name = try container.decode(String.self, forKey: .name)
        self.instructions = try container.decode(String.self, forKey: .instructions)
        self.imageUrl = try container.decode(String.self, forKey: .imageUrl)
        self.ingredients = try container.decode([Ingredient].self, forKey: .ingredients)
    }
}

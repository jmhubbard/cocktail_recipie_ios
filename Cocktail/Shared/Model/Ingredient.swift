//
//  File.swift
//  Cocktail
//
//  Created by Michael Thornton on 12/14/20.
//

import Foundation

struct Ingredient: Decodable {
    private enum CodingKeys: String, CodingKey {
        case name
        case amount
    }

    let name: String
    let amount: String?

    init(name: String, amount: String?) {
        self.name = name
        self.amount = amount
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Ingredient.CodingKeys.self)
        self.name = try container.decode(String.self, forKey: .name)
        self.amount = try container.decodeIfPresent(String.self, forKey: .amount)
    }

}



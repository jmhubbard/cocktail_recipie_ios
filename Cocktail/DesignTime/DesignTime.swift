//
//  DesignTime.swift
//  Cocktail
//
//  Created by Michael Thornton on 12/14/20.
//


struct DesignTime {

    // MARK: - Image
    static let imageUrl = "https://cocktail-images-bucket.s3.amazonaws.com/quksqg1582582597.jpg?AWSAccessKeyId=AKIAZZ5YFRJZXCYLKR6U&Signature=kkZcQo0tCPGzXbpiDBWxjfc0ITU%3D&Expires=1607938248"

    // MARK: - Recipe
    static let recipe: Recipe = .init(
        id: 67,
        name: "Cosmopolitan",
        instructions: "Add all ingredients into cocktail shaker filled with ice. Shake well and double strain into large cocktail glass. Garnish with lime wheel.",
        imageUrl: "https://cocktail-images-bucket.s3.amazonaws.com/kpsajh1504368362.jpg?AWSAccessKeyId=AKIAZZ5YFRJZXCYLKR6U&Signature=lQdNIo%2BShkMZXZvLUllVqMd3xX8%3D&Expires=1607932816",
        ingredients: [
            .init(name: "Absolut Citron", amount: "1 1/4 oz"),
            .init(name: "Lime juice", amount: "1/4 oz"),
            .init(name: "Cointreau", amount: "1/4 oz"),
            .init(name: "Cranberry juice", amount: "1/4 cup"),
        ]
    )

    // MARK: - Recipes
    static let recipes: [Recipe] = [
        .init(
            id: 1,
            name: "A1",
            instructions: "Pour all ingredients into a cocktail shaker, mix and serve over ice into a chilled glass.",
            imageUrl: "https://cocktail-images-bucket.s3.amazonaws.com/2x8thr1504816928.jpg?AWSAccessKeyId=AKIAZZ5YFRJZXCYLKR6U&Signature=a9iU%2FPdv21nJqfSPKsSIXk%2Bg%2BbE%3D&Expires=1607932816",
            ingredients: [
                .init(name: "Gin", amount: "1 3/4 shot"),
                .init(name: "Grand Marnier", amount: "1 Shot"),
                .init(name: "Lemon Juice", amount: "1/4 Shot"),
                .init(name: "Grenadine", amount: "1/8 Shot"),
            ]
        ),
        .init(
            id: 67,
            name: "Cosmopolitan",
            instructions: "Add all ingredients into cocktail shaker filled with ice. Shake well and double strain into large cocktail glass. Garnish with lime wheel.",
            imageUrl: "https://cocktail-images-bucket.s3.amazonaws.com/kpsajh1504368362.jpg?AWSAccessKeyId=AKIAZZ5YFRJZXCYLKR6U&Signature=lQdNIo%2BShkMZXZvLUllVqMd3xX8%3D&Expires=1607932816",
            ingredients: [
                .init(name: "Absolut Citron", amount: "1 1/4 oz"),
                .init(name: "Lime juice", amount: "1/4 oz"),
                .init(name: "Cointreau", amount: "1/4 oz"),
                .init(name: "Cranberry juice", amount: "1/4 cup"),
            ]
        ),
        .init(
            id: 127,
            name: "Gin Fizz",
            instructions: "Shake all ingredients with ice cubes, except soda water. Pour into glass. Top with soda water.",
            imageUrl: "https://cocktail-images-bucket.s3.amazonaws.com/xhl8q31504351772.jpg?AWSAccessKeyId=AKIAZZ5YFRJZXCYLKR6U&Signature=OiMogX6VmVXroADHx%2BIbVJHDXPw%3D&Expires=1607932817",
            ingredients: [
                .init(name: "Gin", amount: "2 oz"),
                .init(name: "Lemon", amount: "Juice of 1/2"),
                .init(name: "Powdered sugar", amount: "1 tsp"),
                .init(name: "Carbonated water", amount: nil),
            ]
        ),
        .init(
            id: 336,
            name: "Screwdriver",
            instructions: "Mix in a highball glass with ice. Garnish and serve.",
            imageUrl: "https://cocktail-images-bucket.s3.amazonaws.com/8xnyke1504352207.jpg?AWSAccessKeyId=AKIAZZ5YFRJZXCYLKR6U&Signature=26D8fZ2A3RsRJpE9xD2OAqIPxjc%3D&Expires=1607932819",
            ingredients: [
                .init(name: "Vodka", amount: "2 oz"),
                .init(name: "Orange juice", amount: nil),
            ]
        )

    ]

    // MARK: - Ingredient
    static let ingredient: Ingredient = .init(name: "Absolut Citron", amount: "1 1/4 oz")

    // MARK: - Ingredients
    static let ingredients: [Ingredient] = [
        .init(name: "Absolut Citron", amount: "1 1/4 oz"),
        .init(name: "Lime juice", amount: "1/4 oz"),
        .init(name: "Cointreau", amount: "1/4 oz"),
        .init(name: "Cranberry juice", amount: "1/4 cup"),
    ]

}

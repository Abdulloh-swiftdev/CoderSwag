//
//  DataService.swift
//  coder-swag
//
//  Created by Abdulloh Bahromjonov on 10/18/20.
//

import Foundation

class  DataService {
    static let instance = DataService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts"),
        Category(title: "HOODIES", imageName: "hoodies"),
        Category(title: "HATS", imageName: "hats"),
        Category(title: "DIGITAL", imageName: "digital")
    ]
    private let hats = [
        Product(imageName: "hat01", title: "Devslopes Logo Graphics Beanie", price: "$22"),
        Product(imageName: "hat02", title: "Devslopes Logo Graphics Black", price: "$18"),
        Product(imageName: "hat03", title: "Devslopes Logo Graphics White", price: "$18"),
        Product(imageName: "hat04", title: "Devslopes Logo Graphics Snapback", price: "$20")
    ]
    private let hoodies = [
        Product(imageName: "hoodie01", title: "Devslopes Logo Graphics Hoodie Gray", price: "$32"),
        Product(imageName: "hoodie02", title: "Devslopes Logo Graphics Hoodie Red", price: "$32"),
        Product(imageName: "hoodie03", title: "Devslopes Logo Graphics Hoodie Gray", price: "$32"),
        Product(imageName: "hoodie04", title: "Devslopes Logo Graphics Hoodie Black", price: "$32")
    ]
    private let shirts = [
        Product(imageName: "shirt01", title: "Devslopes Logo Graphics Black", price: "$18"),
        Product(imageName: "shirt02", title: "Devslopes Badge Graphics Light Gray", price: "$18"),
        Product(imageName: "shirt03", title: "Devslopes Logo Graphics Red", price: "$18"),
        Product(imageName: "shirt04", title: "Hustle Delegate Grey", price: "$18"),
        Product(imageName: "shirt05", title: "KickFlip Studio Black", price: "$18")
    ]
    private let digitalGoods = [Product]()
    
    
    func getCategories() -> [Category] {
        return categories
    }
    func getShirts() -> [Product] {
        return shirts
    }
    func getHats() -> [Product] {
        return hats
    }
    func getHoodies() -> [Product] {
        return hoodies
    }
    func getDigitalGoods() -> [Product] {
        return digitalGoods
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "HATS":
            return getHats()
        case "HOODIES":
            return getHoodies()
        case "SHIRTS":
            return getShirts()
        case "DIGITAL":
            return getDigitalGoods()
        default:
            return getShirts()
        }
        
    }
    
}

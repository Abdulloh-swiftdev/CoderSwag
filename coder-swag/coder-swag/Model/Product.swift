//
//  Product.swift
//  coder-swag
//
//  Created by Abdulloh Bahromjonov on 10/19/20.
//

import Foundation

struct Product {
    public private (set) var imageName: String
    public private (set) var price: String
    public private (set) var title: String
    
    init(imageName: String, title: String, price: String) {
        self.imageName = imageName
        self.title = title
        self.price = price
    }
}

//
//  Category.swift
//  coder-swag
//
//  Created by Abdulloh Bahromjonov on 10/18/20.
//

import Foundation

struct Category {
    private (set) public var title: String
    private (set) public var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}

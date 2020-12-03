//
//  CategoriesCell.swift
//  coder-swag
//
//  Created by Abdulloh Bahromjonov on 10/17/20.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoriesImage: UIImageView!
    @IBOutlet weak var categoriesLabel: UILabel!

    func updateViews(category: Category) {
        categoriesImage.image = UIImage(named: category.imageName)
        categoriesLabel.text = category.title
    }
    

}

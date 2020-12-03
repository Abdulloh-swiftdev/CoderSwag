//
//  ProductsCell.swift
//  coder-swag
//
//  Created by Abdulloh Bahromjonov on 10/19/20.
//

import UIKit

class ProductsCell: UICollectionViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var productTitle: UILabel!
    @IBOutlet weak var productPrice: UILabel!
    
    func updateViews(product: Product) {
        productImage.image = UIImage(named: product.imageName)
        productTitle.text = product.price
        productPrice.text = product.title
    }
    
}

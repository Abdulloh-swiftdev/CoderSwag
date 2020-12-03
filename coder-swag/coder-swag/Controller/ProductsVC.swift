//
//  ProductsVC.swift
//  coder-swag
//
//  Created by Abdulloh Bahromjonov on 10/19/20.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    public private (set) var products = [Product]()
    
    @IBOutlet weak var productsCV: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        productsCV.delegate = self
        productsCV.dataSource = self
        
    }
    
    func initProducts(category: Category){
        products = DataService.instance.getProducts(forCategoryTitle: category.title)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as? ProductsCell {
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        }
        return ProductsCell()
    }
    
}

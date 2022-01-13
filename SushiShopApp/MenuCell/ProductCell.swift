//
//  ProductCell.swift
//  SushiShopApp
//
//  Created by Victor on 13.01.2022.
//

import UIKit

class ProductCell: UICollectionViewCell {
    // MARK: - @IBOutlets
    @IBOutlet weak var productImage: UIImageView!
    
    // MARK: - Public Properties
    
    // MARK: - Private Properties
    
    // MARK: - Initializers
    
    // MARK: - Override Methods
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    // MARK: - @IBActions
    
    // MARK: - Public Methods
    func setupCell(product: Product) {
        self.productImage.image = product.image
    }
    // MARK: - Private Methods
  


}

//
//  MenuViewController.swift
//  SushiShopApp
//
//  Created by Victor on 13.01.2022.
//

import UIKit

class MenuViewController: UIViewController {
    // MARK: - @IBOutlets

    @IBOutlet weak var collectionView: UICollectionView!
    
    // MARK: - Public Properties
    var menu: Menu = Menu()
    // MARK: - Private Properties
    
    // MARK: - Initializers
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collectionView.register(UINib(nibName: "ProductCell" , bundle: nil), forCellWithReuseIdentifier: "ProductCell")
        self.collectionView.dataSource = self
        self.collectionView.delegate = self
    }
    // MARK: - @IBActions
    
    // MARK: - Public Methods
    
    // MARK: - Private Methodsoverride

}
extension MenuViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        menu.products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductCell", for: indexPath) as! ProductCell
        let product = menu.products[indexPath.item]
        cell.setupCell(product: product)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        0
    }
    
    
    
}

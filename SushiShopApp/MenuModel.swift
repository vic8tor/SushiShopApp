//
//  MenuModel.swift
//  SushiShopApp
//
//  Created by Victor on 13.01.2022.
//

import Foundation
import UIKit

struct Product {
    var name: String
    var price: Float
    var image: UIImage
}

class Menu {
    
    var products = [Product]()
    init() {
        setUp()
    }
    func setUp() {
        let p1 = Product(name: "product1", price: 100, image: UIImage(named: "p1")!)
        let p2 = Product(name: "product1", price: 100, image: UIImage(named: "p2")!)
        let p3 = Product(name: "product1", price: 100, image: UIImage(named: "p3")!)
        self.products = [p1, p2, p3]
    }
}

//
//  Menu.swift
//  AppleMusic
//
//  Created by Mansur Rizoev on 14.06.2022.
//

import Foundation
import UIKit

struct Product {
    var name: String
    var price: Float
    var image: UIImage?
}

class Menu {
    
    var products: [Product] = [
        Product(name: "Spatial Audio", price: 100, image: UIImage(named: "p1")),
        Product(name: "Summertime Sounds", price: 200, image: UIImage(named: "p2")),
        Product(name: "Pop in Russian", price: 300, image: UIImage(named: "p3")),
        Product(name: "Hip-Hop in Russian", price: 400, image: UIImage(named: "p4")),
        Product(name: "Pop", price: 500, image: UIImage(named: "p5")),
        Product(name: "Hits", price: 500, image: UIImage(named: "p6")),
        Product(name: "Feel Good", price: 500, image: UIImage(named: "p7")),
        Product(name: "Hits in Russian", price: 500, image: UIImage(named: "p8")),
        Product(name: "Essentials", price: 500, image: UIImage(named: "p9")),
        Product(name: "Wellbeing", price: 500, image: UIImage(named: "p10")),
        Product(name: "Motivation", price: 500, image: UIImage(named: "p11")),
        Product(name: "Focus", price: 500, image: UIImage(named: "p12")),
        Product(name: "Gaming", price: 500, image: UIImage(named: "p13")),
        Product(name: "Jazz", price: 500, image: UIImage(named: "p14")),
        Product(name: "R&B", price: 500, image: UIImage(named: "p15")),
        Product(name: "R&B", price: 500, image: UIImage(named: "p16"))


    ]
    
}
 

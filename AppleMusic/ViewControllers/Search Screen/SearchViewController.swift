//
//  SearchViewController.swift
//  AppleMusic
//
//  Created by Nargiz on 06/06/22.
//

import UIKit



class SearchViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let searchController = UISearchController(searchResultsController: nil)
    
    var menu: Menu = Menu()

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.searchController = searchController
    }
}

extension SearchViewController:UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        2
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        }
        
        return menu.products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if indexPath.section == 0 {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BannerCell", for: indexPath)
            // округление краев
            cell.contentView.layer.cornerCurve = .continuous
            cell.contentView.layer.cornerRadius = 8
            
            // тень
            cell.layer.shadowOffset = .init(width: 0, height: 4)
            cell.layer.shadowColor = UIColor.lightGray.cgColor
            cell.layer.shadowRadius = 10
            cell.layer.shadowOpacity = 1
            
            return cell
        }
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "AlbumCell", for: indexPath) as! ListCell
        let product = menu.products[indexPath.item]
        cell.setupCell(list: product)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if indexPath.section == 0 {
            return CGSize(width: 391, height: 336)
        }
        
        return CGSize(width: 190, height: 150)
    }
    
}

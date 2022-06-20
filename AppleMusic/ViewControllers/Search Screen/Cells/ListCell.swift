//
//  ListCell.swift
//  AppleMusic
//
//  Created by Mansur Rizoev on 14.06.2022.
//

import UIKit

class ListCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var productImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        self.productImage.image = nil
        
    }
    
    func setupCell(list: Product){
        self.productImage.image = list.image
        self.titleLabel.text = list.name
        
        contentView.layer.cornerCurve = .continuous
        contentView.layer.cornerRadius = 6
    }

}

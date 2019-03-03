//
//  CategoryListCell.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 01/03/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit

class CategoryListCell: UICollectionViewCell {
    
//    override var isSelected: Bool { didSet{ selectedCategory() } }
    
    @IBOutlet weak var categoryIcon: UIImageView!
    @IBOutlet weak var categoryTitle: UILabel!
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
//        setupUI()
    }
    
    func setupUI () {
        self.contentView.layer.cornerRadius = 4.0
        self.contentView.layer.borderWidth = 1.0
        self.contentView.layer.borderColor = UIColor.clear.cgColor
        self.contentView.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.gray.cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 1.0)
        self.layer.shadowRadius = 4.0
        self.layer.shadowOpacity = 1.0
        self.layer.cornerRadius = 10
        self.layer.masksToBounds = false
        self.layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.contentView.layer.cornerRadius).cgPath
    }
    
    
//    func selectedCategory() {
//        print(self.categoryTitle.text)
//    }
}


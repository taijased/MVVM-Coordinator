//
//  RecipeListViewController.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 02/03/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//
import UIKit
import RxSwift
import RxCocoa

class RecipeListViewController: UIViewController, StoryboardInitializable {

    
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindings()
    }
    
    private func setupBindings() {
       
    }
    
//    private func setupCategoryListCell(_ cell: CategoryListCell, _ category: Category) {
//
//    }
}

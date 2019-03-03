//
//  CRListViewController.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 02/03/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit


class CRListViewController: UIViewController, StoryboardInitializable {
    
    @IBOutlet weak var collectionView: UICollectionView!
    var viewModel: CRListViewModel!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindings()
    }
    
    private func setupBindings() {
        
    }
}

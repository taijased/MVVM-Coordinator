//
//  CategoryListViewController.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 01/03/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa


class CategoryListViewController: UIViewController, StoryboardInitializable {
    
    let disposeBag = DisposeBag()
    var viewModel: CategoryListViewModel!

    @IBOutlet weak var collectionView: UICollectionView!
    
    
    private let refreshControl = UIRefreshControl()
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBindings()
        
        
        self.collectionView!.alwaysBounceVertical = true
        self.refreshControl.tintColor = UIColor.red
        self.refreshControl.addTarget(self, action: #selector(loadData), for: .valueChanged)
        self.collectionView!.addSubview(refreshControl)
        
    }
    
    @objc func loadData() {
        print("hui sosi")
        viewModel.fetchCategory()
        stopRefresher()
    }
    
    func stopRefresher() {
        self.refreshControl.endRefreshing()
    }
    
    private func setupBindings() {
        viewModel.category
            .observeOn(MainScheduler.instance)
            .do(onNext: { [weak self] _ in self?.refreshControl.endRefreshing() })
            .bind(to: collectionView.rx.items(cellIdentifier: "categoryListCell", cellType: CategoryListCell.self)) { (_, category, cell) in
                self.setupCategoryListCell(cell, category)
            }
            .disposed(by: disposeBag)
        collectionView.rx.modelSelected(Category.self)
                            .bind(to: viewModel.selectCategory)
        .disposed(by: disposeBag)
    }
    
    private func setupCategoryListCell(_ cell: CategoryListCell, _ category: Category) {
        cell.categoryTitle.text = category.title
    }
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        navigationController?.setNavigationBarHidden(true, animated: animated)
//    }
//    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//        navigationController?.setNavigationBarHidden(true, animated: animated)
//    }
}


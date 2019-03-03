//
//  CategoryCoordinator.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 28/02/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit
import RxSwift
import SafariServices

class CategoryCoordinator: BaseCoordinator<Void> {
    
//    private let window: UIWindow
     private let navigationController: UINavigationController?
    public var tb: UITabBarController?
//    init(_ navigationController: UINavigationController?) {
//        self.navigationController = navigationController
//    }
    override init() {
        self.navigationController = UINavigationController()
        
    }
    override func start() -> Observable<Void> {
        
        let viewModel = CategoryListViewModel()
        let viewController = CategoryListViewController.initFromStoryboard(name: "Main")
        viewController.viewModel = viewModel
        viewModel.showCategoryRecipes
            .subscribe(onNext: { [weak self] in self?.showCategoryRecipes(by: $0) })
            .disposed(by: disposeBag)
        
        self.rootViewController = viewController
        
        self.navigationController?.viewControllers = [rootViewController!]
//        self.navigationController?.setNavigationBarHidden(true, animated: true)
        return Observable.never()
    }
    private func showCategoryRecipes(by category: Category) {
        let viewController = CRListViewController.initFromStoryboard(name: "Main")
//        let viewController = CategoryListViewController.initFromStoryboard(name: "Main")
        
        
        viewController.viewModel = CRListViewModel(category: category)
//        viewController.viewModel = CategoryListViewModel()
        
        viewController.title = category.title
        
//        let safariViewController = SFSafariViewController(url: URL(string: "http://tim.agency")!)
        
//        navigationController.present(navigationController, animated: true)
//        navigationController.show(viewController, sender: self)
//        self.tb?.navigationController?.pushViewController(viewController, animated: true)
//
//        self.navigationController?.setNavigationBarHidden(false, animated: false)
        self.navigationController?.pushViewController(viewController, animated: true)
        print(self.navigationController)
//        self.navigationController?.pushViewController(viewController, animated: true)
        //rootViewController?.navigationController?.popToViewController(viewController, animated: true)//(viewController, animated: true)
        
        
        
        
//        let navigationController = UINavigationController(rootViewController: viewController)
//        navigationController.pushViewController(viewController, animated: true)
        //        self.navigationController?.pushViewController(viewController, animated: true)
//        self.rootViewController?.navigationController?.pushViewController(viewController, animated: true)
//        let safariViewController = SFSafariViewController(url: URL(string: "http://tim.agency")!)
        
//        self.navigationController?.pushViewController(safariViewController, animated: true)
//        let navigationController = UINavigationController(rootViewController: safariViewController)
        
//        let navigationController = window.rootViewController as! UINavigationController
//        navigationController.pushViewController(safariViewController, animated: true)
//        window.rootViewController?.present(safariViewController, animated: true)
//        self.rootViewController?.navigationController?.pushViewController(safariViewController, animated: true)
    }
    

}


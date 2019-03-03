//
//  CategoryListViewModel.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 01/03/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//


import Foundation
import RxSwift

class CategoryListViewModel  {
    public static var gg = 1
    // MARK: - Inputs
    let selectCategory: AnyObserver<Category>
    // MARK: - Outputs
    let showCategoryRecipes: Observable<Category>
    var category: Observable<[Category]>

    init() {
        self.category = Observable.just([])
        let _selectCategory = PublishSubject<Category>()
        self.selectCategory = _selectCategory.asObserver()
        self.showCategoryRecipes = _selectCategory.asObservable()
        
        fetchCategory()
    }
    
    func fetchCategory(){
        print("i ne prosi")
        if(CategoryListViewModel.gg == 1)
        {
            let category = [Category(title: "Для детей", iconUrl: "carden"),
                            Category(title: "Для всей семьи", iconUrl: "carden"),
                            Category(title: "Для животных", iconUrl: "carden")]
            
            self.category = Observable.just(category)
            CategoryListViewModel.gg += 1
        }
        else
        {
            let category = [Category(title: "Красим", iconUrl: "carden"),
                            Category(title: "Сад", iconUrl: "carden"),
                            Category(title: "Из дерева", iconUrl: "carden")]
            
            self.category = Observable.just(category)
        }
    }
    
    

}


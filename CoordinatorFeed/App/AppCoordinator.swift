//
//  AppCoordinator.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 01/03/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit
import RxSwift

class AppCoordinator: BaseCoordinator<Void> {
    
//    private let window: UIWindow
    private weak var navigationController: UINavigationController?
    
    init(_ navigationController: UINavigationController?) {
//        self.window = window
        self.navigationController = navigationController
    }
//    
//    override func start() -> Observable<Void> {
//        let startCoord = TabCoordinator()
//        return coordinate(to: startCoord)
//    }
}

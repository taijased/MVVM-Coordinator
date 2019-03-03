//
//  AppDelegate.swift
//  CoordinatorFeed
//
//  Created by Maxim Spiridonov on 28/02/2019.
//  Copyright © 2019 Maxim Spiridonov. All rights reserved.
//

import UIKit
import RxSwift

//@UIApplicationMain
//class AppDelegate: UIResponder, UIApplicationDelegate {
//
//    var window: UIWindow?
//    private var appCoordinator: AppCoordinator!
////    private var tabCoordinator: TabCoordinator!
//    private let disposeBag = DisposeBag()
//
//    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//
//        guard let navigationController = window?.rootViewController as? UINavigationController else { return true }
////        window = UIWindow()
//
//        appCoordinator = AppCoordinator(navigationController)
//        appCoordinator.start()
//            .subscribe()
//            .disposed(by: disposeBag)
////
////        tabCoordinator = TabCoordinator(window: window!)
////        tabCoordinator.start()
////            .subscribe()
////            .disposed(by: disposeBag)
//
//
//        return true
//    }
//}

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    private let disposeBag = DisposeBag()
    private var appCoordinator: AppCoordinator!
    private var tabCoordinator: TabCoordinator!

    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        guard let navigationController = window?.rootViewController as? UINavigationController else { return true }
//        appCoordinator = AppCoordinator(navigationController)
//                appCoordinator.start()
//                    .subscribe()
//                    .disposed(by:
        window = UIWindow()
        tabCoordinator = TabCoordinator(window: window!)
        tabCoordinator.start()
                    .subscribe()
                    .disposed(by: disposeBag)

        return true
    }
}


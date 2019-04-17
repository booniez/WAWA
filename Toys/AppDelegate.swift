//
//  AppDelegate.swift
//  Toys
//
//  Created by JLM on 2019/4/12.
//  Copyright © 2019 JLM. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    var navigationController: NavigationViewController?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = UIWindow(frame: UIScreen.main.bounds)
        showStartViewController()
        self.window?.makeKeyAndVisible()
        return true
    }
    
    private func showStartViewController() {
        navigationController = NavigationViewController(rootViewController: ViewController())
        navigationController?.tabBarController?.tabBar.isTranslucent = false
        window?.rootViewController = navigationController
    }
}

//
//  BaseViewController.swift
//  Toys
//
//  Created by JLM on 2019/4/12.
//  Copyright © 2019 JLM. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    open override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = true
    }
    
    open override func viewDidLoad() {
        super.viewDidLoad()
        automaticallyAdjustsScrollViewInsets = false
        view.backgroundColor = UIColor.white
        configurePopNavigationItem(popNavigationItem)
    }
}

extension UIViewController {
    var popNavigationItem: UIBarButtonItem {
        let image = UIImage(named: "back")
        let backButton = UIButton(type: .custom)
        backButton.setImage(image, for: UIControl.State())
        backButton.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
        backButton.imageEdgeInsets = UIEdgeInsets.init(top: 0, left: -20, bottom: 0, right: 10)
        backButton.addTarget(self, action: #selector(self.pop), for: .touchUpInside)
        return UIBarButtonItem(customView: backButton)
    }
    
    /// 配置Item
    ///
    /// - Parameter item: <#item description#>
    open func configurePopNavigationItem(_ item: UIBarButtonItem) {
        navigationItem.leftBarButtonItem = item
    }
    
    /// POP
    @objc open func pop() {
        guard let nc = navigationController, nc.viewControllers.count > 1 else {
            return
        }
        nc.popViewController(animated: true)
    }
}

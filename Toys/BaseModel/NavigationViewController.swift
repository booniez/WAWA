//
//  NavigationViewController.swift
//  Repast
//
//  Created by JLM on 2019/3/12.
//  Copyright © 2019 JLM. All rights reserved.
//

import UIKit
import RxCocoa
import RxSwift

class NavigationViewController: UINavigationController {

    let bag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if !self.children.isEmpty {
            viewController.hidesBottomBarWhenPushed = true
        }
        super.pushViewController(viewController, animated: animated)
    }
    
     // MARK: - Private functions
    private func initNavigationBar() {
        let img = UIImage(named: "nav_bg")?.resizableImage(withCapInsets: UIEdgeInsets.zero, resizingMode: .stretch)
        navigationBar.setBackgroundImage( img, for: .default)
        navigationBar.shadowImage = UIImage()
        navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.ccw.hex(0xffffff, alpha: 1),NSAttributedString.Key.font:UIFont.ccw_medium_font(size: 18.0)]
        // 调整图片上移
        tabBarItem.imageInsets = UIEdgeInsets(top: 6, left: 0,bottom: -6, right: 0)
    }
}

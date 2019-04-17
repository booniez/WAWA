//
//  Category.swift
//  Repast
//
//  Created by JLM on 2019/3/10.
//  Copyright © 2019 JLM. All rights reserved.
//

import UIKit

public enum DeviceType {
    case iPhone4
    case iPhone5
    case iPhone6
    case iPhone6p
    case iPhoneX
    case iPad
    
    public var size: CGSize {
        switch self {
        case .iPhone4: return CGSize(width: 320, height: 480)
        case .iPhone5: return CGSize(width: 320, height: 568)
        case .iPhone6: return CGSize(width: 375, height: 667)
        case .iPhone6p: return CGSize(width: 414, height: 736)
        case .iPhoneX: return CGSize(width: 375, height: 812)
        case .iPad: return CGSize(width: 768, height: 1024)
        }
    }
}

public let kScreenSize = UIScreen.main.bounds.size

public let iPhone = (UIDevice.current.userInterfaceIdiom == .phone)
public let iPad = (UIDevice.current.userInterfaceIdiom == .pad)

public let iPhone4 = (iPhone && DeviceType.iPhone4.size == kScreenSize)
public let iPhone5 = (iPhone && DeviceType.iPhone5.size == kScreenSize)
public let iPhone6 = (iPhone && DeviceType.iPhone6.size == kScreenSize)
public let iPhone6p = (iPhone && DeviceType.iPhone6p.size == kScreenSize)
public let iPhoneX = (iPhone && DeviceType.iPhoneX.size == kScreenSize)

public let mobKey = "2a65d40da7544"
public let juheKey = "ebd1c15ae4586ca89e223bb3a108ea8d"
public let wechatAppID = "xxxxxx"
public let wechatAppSecret = "xxxxxx"

extension UINavigationBar {
    // Navigation iPhoneX > 24
    static let height: CGFloat = iPhoneX ? 88 : 64
}

// MARK: - UITabBar
extension UITabBar {
    static let height: CGFloat = iPhoneX ? 117 : 83
}

// MARK: - 颜色扩展
extension UIColor {
    static var ccw: CCWColorDSL {
        return CCWColorDSL.init()
    }
}

class CCWColorDSL {
    func hex(_ hex: Int, alpha: CGFloat = 1.0) -> UIColor {
        return UIColor.init(hex: hex, alpha: alpha)
    }
    
    func hexString(_ hexStr: String, alpha: CGFloat = 1.0) -> UIColor {
        return UIColor(hexString: hexStr, alpha: alpha)
    }
}

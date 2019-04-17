//
//  UIFont+Extensions.swift
//  Repast
//
//  Created by JLM on 2019/3/11.
//  Copyright © 2019 JLM. All rights reserved.
//

import UIKit

extension UIFont {
    class func ccw_number_font(size: CGFloat) -> UIFont {
        return UIFont.init(name: "SFUDINMitAlt", size: size)!
    }
    class func ccw_normal_font(size: CGFloat) -> UIFont {
        return UIFont.init(name: "PingFangSC-Regular", size: size)!
    }
    class func ccw_medium_font(size: CGFloat) -> UIFont {
        return UIFont.init(name: "PingFangSC-Medium", size: size)!
    }
    class func ccw_bold_font(size: CGFloat) -> UIFont {
        return UIFont.init(name: "PingFangSC-Semibold", size: size)!
    }
}

//
//  APIContext.swift
//  Collector
//
//  Created by listen on 2017/12/8.
//  Copyright © 2017年 covermedia. All rights reserved.
//

import UIKit


var globalAPIEnvironment: APIEnvironment = {
    if let api = UserDefaults.standard.object(forKey: "globalAPIEnvironment") as? String {
        return APIEnvironment.init(rawValue: api)!
    } else {
        return APIEnvironment.release
    }
}()


let logNetwork = true

enum APIEnvironment: String {
//    case release = "http://apicloud.mob.com/v1" // 友盟
    case release = "http://apis.juhe.cn/cook/" // 聚合
}


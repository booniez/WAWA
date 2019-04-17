//
//  CPServiceAPI.swift
//  ccwpa
//
//  Created by monstar on 2018/10/22.
//  Copyright © 2018 MarcoLi. All rights reserved.
//

import UIKit
import Moya

let apiHelper = NetworkProvider<CPServiceAPI>()

enum CPServiceAPI {
    /// 菜谱分类标签查询
    case getCookCategory
    
    /// 按标签查询菜谱接口
    case getMenuTag(tag: Int, page: Int, pageSize: Int)
    
    /// 搜索菜谱
    case searchMenu(menu: String, pn: Int, rn: Int)
    
    /// 菜谱详情
    case getRecipe(rid: Int)
}

extension CPServiceAPI: TargetType {
    var path: String {
        switch self {
//        case .getCookCategory:
//            return "/cook/category/query?key=\(mobKey)"
//        case .getMenuTag:
//            return "/cook/menu/search"
//        case .searchMenu:
//            return "/cook/menu/query"
        case .getCookCategory:
            return "category?key=\(juheKey)"
        case .getMenuTag:
            return "index"
        case .searchMenu:
            return "query"
        case .getRecipe:
            return "queryid"
        }
    }

    var method: Moya.Method {
//        switch self {
//        case .getCookCategory, .getMenuTag, .searchMenu:
//            return .get
//        default:
            return .post
//        }
    }

    var parameters: [String: Any] {
        switch self {
        case .getMenuTag(let tag, let page, let pageSize):
            return ["key": juheKey, "cid": tag, "pn": page, "rn": pageSize]
        case .getRecipe(let rid):
            return ["key": juheKey, "id": rid]
        case .searchMenu(let menu, let pn, let rn):
            return ["key": juheKey, "menu": menu, "pn": pn, "rn": rn]
        default:
            return [:]
        }
    }

    var task: Task {
        switch self {
        default:
            return Task.requestParameters(parameters: parameters, encoding: URLEncoding.default)
        }
    }

    var sampleData: Data {
        return Data()

    }

    var headers: [String: String]? {
        return nil
    }

    var baseURL: URL {
        return URL.init(string: APIEnvironment.release.rawValue)!
    }
}



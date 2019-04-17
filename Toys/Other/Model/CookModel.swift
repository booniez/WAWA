//
//  CookModel.swift
//  Repast
//
//  Created by abc on 2019/3/11.
//  Copyright © 2019 JLM. All rights reserved.
//

import Foundation

//struct CookCategory: Codable {
//    let msg: String?
//    let result: Content?
//    let retCode: String?
//}
//
//struct Content: Codable {
//    let categoryInfo: ResultCategoryInfo?
//    let childs: [ResultChild]?
//}
//
//struct ResultCategoryInfo: Codable {
//    let ctgID, name: String?
//    
//    enum CodingKeys: String, CodingKey {
//        case ctgID = "ctgId"
//        case name
//    }
//}
//
//struct ResultChild: Codable {
//    let categoryInfo: ChildCategoryInfo?
//    let childs: [ChildChild]?
//}
//
//struct ChildCategoryInfo: Codable {
//    let ctgID, name, parentID: String?
//    
//    enum CodingKeys: String, CodingKey {
//        case ctgID = "ctgId"
//        case name
//        case parentID = "parentId"
//    }
//}
//
//struct ChildChild: Codable {
//    let categoryInfo: ChildCategoryInfo?
//}
//
//struct MakeWay: Codable {
//    let msg: String?
//    let result: Foods?
//    let retCode: String?
//}
//
//struct Foods: Codable {
//    let curPage: Int?
//    let list: [List]?
//    let total: Int?
//}
//
//struct List: Codable {
//    let ctgIDS: [String]?
//    let ctgTitles, menuID, name: String?
//    let recipe: Recipe?
//    let thumbnail: String?
//    
//    enum CodingKeys: String, CodingKey {
//        case ctgIDS = "ctgIds"
//        case ctgTitles
//        case menuID = "menuId"
//        case name, recipe, thumbnail
//    }
//}
//
//struct Recipe: Codable {
//    let img: String?
//    let ingredients, method, sumary, title: String?
//}

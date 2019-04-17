//
//  SearchModel.swift
//  Repast
//
//  Created by abc on 2019/3/14.
//  Copyright © 2019 JLM. All rights reserved.
//

import Foundation


/// SearchModel

struct SearchModel: Codable {
    let resultcode, reason: String?
    let result: SearchResult?
    let errorCode: Int?
    
    enum CodingKeys: String, CodingKey {
        case resultcode, reason, result
        case errorCode = "error_code"
    }
}

struct SearchResult: Codable {
    let data: [Datum]?
    let totalNum, pn, rn: String?
}

struct Datum: Codable {
    let id, title, tags, imtro: String?
    let ingredients, burden: String?
    let albums: [String]?
    let steps: [Step]?
}


struct Step: Codable {
    let img: String?
    let step: String?
}

/// MenuModel

struct MenuModel: Codable {
    let resultcode, reason: String?
    let result: [MenuResult]?
    let errorCode: Int?
    
    enum CodingKeys: String, CodingKey {
        case resultcode, reason, result
        case errorCode = "error_code"
    }
}

struct MenuResult: Codable {
    let parentID, name: String?
    let list: [List]?
    
    enum CodingKeys: String, CodingKey {
        case parentID = "parentId"
        case name, list
    }
}

struct List: Codable {
    let id, name, parentID: String?
    
    enum CodingKeys: String, CodingKey {
        case id, name
        case parentID = "parentId"
    }
}


///
struct TagModel: Codable {
    let resultcode, reason: String?
    let result: TagResult?
    let errorCode: Int?
    
    enum CodingKeys: String, CodingKey {
        case resultcode, reason, result
        case errorCode = "error_code"
    }
}

struct TagResult: Codable {
    let data: [Datum]?
    let totalNum, pn, rn: String?
}

/// RecipeModel
struct RecipeModel: Codable {
    let resultcode, reason: String?
    let result: RecipeResult?
    let errorCode: Int?
    
    enum CodingKeys: String, CodingKey {
        case resultcode, reason, result
        case errorCode = "error_code"
    }
}

struct RecipeResult: Codable {
    let data: [Datum]?
    let totalNum, pn, rn: Int?
}


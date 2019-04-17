//
//  UserTokenApiModel.swift
//  VB
//
//  Created by AlienLi on 2017/12/21.
//  Copyright © 2017年 MarcoLi. All rights reserved.
//

import UIKit

import DefaultsKit

let access_tokenKey = Key<String>("access_token")
let refresh_tokenKey = Key<String>("refresh_token")
let token_typeKey = Key<String>("token_type")
let tenantKey = Key<String>("tenant")
let departKey = Key<String>("depart")
let userIdKey = Key<String>("id")
let rentKey = Key<String>("rent")

let expires_inKey = Key<Int>("expires_in")
let scopeKey = Key<String>("scope")
let subKey = Key<String>("sub")
let expireKey = Key<String>("expire")
let userNameKey = Key<String>("userName")
let jtiKey = Key<String>("jti")
let ParkingProtocol = Key<Bool>("ParkingProtocol")


struct TokenModel: Codable {
    let access_token: String?
    let expire: String?
    let expires_in: Int?
    let jti: String?
    let refresh_token: String?
    let scope: String?
    let sub: String?
    let token_type: String?
    let userId: String?
    let userName: String?
}



class UserInfo: Codable {
    var id: String?
    var username: String?
    var name: String?
    var phone: String?
    var email: String?
    var avatar: String?
    var roleId: String?
    var departmentId: String?
    var roleName: String?
    var password: String?
    
}


class UploadImage: Codable {
    var data: String?
}


class CompanyDep: Codable {
    var companyFlag: Int?
    var name: String?
    var departmentId: String?
}


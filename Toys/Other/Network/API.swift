//
//  API.swift
//  MoyaDemo
//
//  Created by Mustafa on 11/8/17.
//  Copyright © 2017 Mustafa. All rights reserved.
//

import Foundation
import RxSwift
import Moya

var isRefreshingToken = false
//var retryCount = 0

extension PrimitiveSequence where TraitType == SingleTrait, ElementType == Response {
    
    public func retryWithAuthIfNeeded(limit: Int) -> Single<E> {
        return self.retryWhen { errors in
            return errors.enumerated().flatMap { (retryCount, error) -> Single<TokenModel> in
                // 重试超过限制返回错误
                if retryCount >= limit {
                    throw CPError.timeOut
                }
                throw CPError.serverDataError
            }
        }
    }
}

func cancelAllRequest() {
    provider.manager.session.getTasksWithCompletionHandler { dataTasks, uploadTasks, downloadTasks in
        dataTasks.forEach { $0.cancel() }
        uploadTasks.forEach { $0.cancel() }
        downloadTasks.forEach { $0.cancel() }
    }
}

private let endpointClosure = { (target: CPServiceAPI) -> Moya.Endpoint<CPServiceAPI> in
    return Endpoint(
            url: "\(URL(target: target).absoluteString)",
            sampleResponseClosure: { .networkResponse(200, target.sampleData) },
            method: target.method,
            task: target.task,
            httpHeaderFields: target.headers)

}


private func JSONResponseDataFormatter(_ data: Data) -> Data {
    do {
        let dataAsJSON = try JSONSerialization.jsonObject(with: data)
        let prettyData =  try JSONSerialization.data(withJSONObject: dataAsJSON, options: .prettyPrinted)
        return prettyData
    } catch {
        return data // fallback to original data if it can't be serialized.
    }
}

let provider = MoyaProvider<CPServiceAPI>(endpointClosure: NetworkProvider.endpointMapping,
                                           plugins: [NetworkLoggerPlugin(verbose: true, responseDataFormatter: JSONResponseDataFormatter)])



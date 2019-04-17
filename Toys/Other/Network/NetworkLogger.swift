//
//  NetworkLogger.swift
//  Collector
//
//  Created by listen on 2017/12/8.
//  Copyright © 2017年 covermedia. All rights reserved.
//

import UIKit
import Moya
import Result

class NetworkLogger: PluginType {

    /// Called immediately before a request is sent over the network (or stubbed).
    func willSend(_ request: RequestType, target: TargetType) {
        
    }
    /// Called after a response has been received, but before the MoyaProvider has invoked its completion handler.
    func didReceive(_ result: Result<Moya.Response, MoyaError>, target: TargetType) {
        if logNetwork {
            switch result {
            case .success(let response):
                debugPrint("\(response.response?.url?.absoluteString ?? String())")
            case .failure(let error):
                debugPrint("Response ERROR :: \(error.localizedDescription)")
            }
        }
    }

    
}

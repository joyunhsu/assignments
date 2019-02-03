//
//  JSONDownloader.swift
//  DataAssignment
//
//  Created by 徐若芸 on 2019/2/3.
//  Copyright © 2019 Jo Hsu. All rights reserved.
//

import Foundation

class JSONDownloader {
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    typealias JSON = [String: AnyObject]
    typealias JSONTaskCompletionHandler = (JSON?, StationError?) -> Void
    
    func jsonTask(with request: URLRequest, completionHandler completion: @escaping JSONTaskCompletionHandler) -> URLSessionDataTask {
        let task = session.dataTask(with: request) { data, response, error in
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(nil, StationError.requestFailed)
                return
            }
            
            if httpResponse.statusCode == 200 {
                if let data = data {
                    do {
                        let json = try JSONSerialization.jsonObject(with: data, options: []) as? JSON
                        completion(json, nil)
                    } catch {
                        completion(nil, StationError.jsonParsingFailure)
                    }
                } else {
                    completion(nil, StationError.invalidData)
                }
            } else {
                completion(nil, StationError.responseUnsuccessful(statusCode: httpResponse.statusCode) )
            }
        }
        
        return task
    }
    
}



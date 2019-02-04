//
//  JSONDownloader.swift
//  Stormy
//
//  Created by 徐若芸 on 2019/2/2.
//  Copyright © 2019 Treehouse. All rights reserved.
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
    typealias JSONTaskCompletionHandler = (JSON?, DarkSkyError?) -> Void
    
    func jsonTask(with request: URLRequest, completionHandler completion: @escaping JSONTaskCompletionHandler) -> URLSessionDataTask {
        let task = session.dataTask(with: request) { data, response, error in
            guard let httpResponse = response as? HTTPURLResponse else {
                completion(nil, DarkSkyError.requestFailed)
                return
            }
            
            if httpResponse.statusCode == 200 {
                if let data = data {
                    do {
                        let json = try JSONSerialization.jsonObject(with: data, options: []) as? JSON
                        completion(json, nil)
                    } catch {
                        completion(nil, DarkSkyError.jsonParsingFailure)
                    }
                } else {
                    completion(nil, DarkSkyError.invalidData)
                }
            } else {
                completion(nil, DarkSkyError.responseUnsuccessful(statusCode: httpResponse.statusCode) )
            }
        }
        
        return task
    }
    
}






































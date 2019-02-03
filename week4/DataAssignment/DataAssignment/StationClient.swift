//
//  StationClient.swift
//  DataAssignment
//
//  Created by 徐若芸 on 2019/2/3.
//  Copyright © 2019 Jo Hsu. All rights reserved.
//

import Foundation

class StationClient {
    let jsonUrlString = "https://stations-98a59.firebaseio.com/practice.json"
    
    let decoder = JSONDecoder()
    let session: URLSession
    
    init(configuration: URLSessionConfiguration) {
        self.session = URLSession(configuration: configuration)
    }
    
    convenience init() {
        self.init(configuration: .default)
    }
    
    typealias StationCompletionHandler = (Station?, Error?) -> Void
    
    func getStation(with url: URL, completionHandler completion: @escaping StationCompletionHandler) {
    
        guard let url = URL(string: jsonUrlString) else {
            completion(nil, StationError.invalidUrl)
            return
        }
        
        let request = URLRequest(url: url)
        
        let task = session.dataTask(with: request) { data, response, error in
            DispatchQueue.main.async {
                if let data = data {
                    guard let httpResponse = response as? HTTPURLResponse else {
                        completion(nil, StationError.requestFailed)
                        return
                    }
                    if httpResponse.statusCode == 200 {
                        do {
                            let station = try self.decoder.decode(Station.self, from: data)
                            completion(station, nil)
                        } catch let error {
                            completion(nil, error)
                        }
                    } else {
                        completion(nil, StationError.invalidData)
                    }
                } else if let error = error {
                    completion(nil, error)
                }
            }
        }
        
        task.resume()
    
    
    }
    
   

}

//
//  HomeworldApi.swift
//  StarTrivia
//
//  Created by Pardip Bhatti on 09/06/19.
//  Copyright © 2019 Pardip Bhatti. All rights reserved.
//

import Foundation
import Alamofire

class HomeworldApi {
    func getHomeword(url: String, completion: @escaping HomewroldResponseCompletion) {
        guard let url = URL(string: url) else { return }
        
        Alamofire.request(url).responseJSON { (response) in
            if let error = response.result.error {
                debugPrint(error.localizedDescription)
                completion(nil)
                return
            }
            
            guard let data = response.data else { return completion(nil) }
            
            let jsonDecoder = JSONDecoder()
            
            do {
                let homeWorld = try jsonDecoder.decode(Homeworld.self, from: data)
                completion(homeWorld)
            } catch {
                debugPrint(error.localizedDescription)
                completion(nil)
            }
        }
    }
}

//
//  Service.swift
//  LearnViper
//
//  Created by Rishabh Dubey on 06/05/21.
//

import Foundation

class Service {
    
    static var shared: Service {
        return Service()
    }
    
    private init() {}
    
    enum LocalizeError: Error {
        case invalidStatusCode
        case emptyData
    }
    
    func getPosts(completion: @escaping ([Post]?, Error?) -> ()) {
        let urlString = "https://jsonplaceholder.typicode.com/posts"
        request(urlString: urlString, completion: completion)
    }
    
    func request<T: Decodable>(urlString: String, completion: @escaping (T?, Error?) -> ()) {
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let error = error {
                completion(nil, error)
                return
            }
            
            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
                completion(nil, LocalizeError.invalidStatusCode)
                return
            }
            
            guard let data = data else {
                completion(nil, LocalizeError.emptyData)
                return
            }
            
            do {
                let model = try JSONDecoder().decode(T.self, from: data)
                completion(model, nil)
                
            } catch let error {
                completion(nil, error)
            }
        }.resume()
    }
}

//
//  Request.swift
//  SignupPrototype
//
//  Created by Viet on 2020/03/24.
//  Copyright © 2020 Codesquad. All rights reserved.
//

import Foundation

struct HTTP {
    enum Method: String {
        case GET, POST, PUT, DELETE
    }

    static func request(method: Method, url: String, body: Data?, toJson: Bool = false) -> URLRequest? {
        guard let url = URL(string: url) else { return nil }

        var request = URLRequest(url: url)
        request.httpBody = body
        request.httpMethod = method.rawValue

        if toJson {
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        }

        return request
    }

    static func getResponse(with request: URLRequest, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: completionHandler)
        task.resume()

        return task
    }
}

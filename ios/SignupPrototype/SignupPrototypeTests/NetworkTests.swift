//
//  NetworkTests.swift
//  SignupPrototypeTests
//
//  Created by Viet on 2020/03/24.
//  Copyright © 2020 Codesquad. All rights reserved.
//

import XCTest
@testable import SignupPrototype

class NetworkTests: XCTestCase {
    func testRequestGET() {
        let url = "https://public.codesquad.kr/jk/doodle.json"
        if let request = HTTP.request(method: .GET, url: url, body: nil, toJson: true) {

            let task = HTTP.getResponse(with: request) { (data, response, error) in
                dump(data)
                let anyData = try! JSONSerialization.jsonObject(with: data!, options: [])
                
            }

            task.resume()
        }
    }

}

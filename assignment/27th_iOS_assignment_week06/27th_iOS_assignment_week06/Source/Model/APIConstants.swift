//
//  APIConstants.swift
//  27th_iOS_assignment_week06
//
//  Created by inae Lee on 2020/11/24.
//

import Foundation

struct APIConstants {
    static let baseURL = "http://15.164.83.210:3000"
    
    static let signInURL = baseURL + "/users/signin"
    static let signUpURL = baseURL + "/users/signup"
}

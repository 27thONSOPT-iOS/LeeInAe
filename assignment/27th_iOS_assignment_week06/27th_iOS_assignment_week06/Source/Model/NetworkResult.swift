//
//  NetworkResult.swift
//  27th_iOS_assignment_week06
//
//  Created by inae Lee on 2020/11/24.
//

import Foundation

enum NetworkResult<T> {
    case success(T)
    case requestErr(T)
    case pathErr
    case serverErr
    case networkFail
}

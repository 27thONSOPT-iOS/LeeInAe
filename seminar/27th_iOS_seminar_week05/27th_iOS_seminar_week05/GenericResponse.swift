//
//  GenericResponse.swift
//  27th_iOS_seminar_week05
//
//  Created by inae Lee on 2020/11/21.
//

import Foundation

struct GenericResponse<T: Codable>: Codable {
    // codable protocol -> json type으로 디코딩/인코딩 해줌
    var status: Int
    var success: Bool
    var message: String
    var data: T?
    
    // key - stuct 변수 mapping
    enum CodingKeys: String, CodingKey {
        case status = "status"
        case success = "success"
        case message = "message"
        case data = "data"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        status = (try? values.decode(Int.self, forKey: .status)) ?? -1
        success = (try? values.decode(Bool.self, forKey: .success)) ?? false
        message = (try? values.decode(String.self, forKey: .message)) ?? ""
        data = (try? values.decode(T.self, forKey: .data)) ?? nil
    }
}

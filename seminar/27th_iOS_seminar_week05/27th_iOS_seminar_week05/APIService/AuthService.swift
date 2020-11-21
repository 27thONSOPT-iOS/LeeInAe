//
//  AuthService.swift
//  27th_iOS_seminar_week05
//
//  Created by inae Lee on 2020/11/21.
//

import Foundation
import Alamofire

struct AuthService {
    static let shared = AuthService() // singleton
    
    
    // @escaping : closure
    func signIn(email: String, password: String, completion: @escaping (NetworkResult<Any>) -> ()) {
        let url = APIConstants.usersSignInURL
        
        let header: HTTPHeaders = [
            "Content-Type" : "application/json"
        ]
        
        let body: Parameters = [
            "email": email,
            "password": password
        ]
        
        let dataRequest = AF.request(url, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header)
        
        dataRequest.responseData { (response) in
            switch response.result {
            case .success:
                guard let statusCode = response.response?.statusCode else {return}
                
                guard let data = response.value else {
                    return
                }
                completion(judegeSignIndata(status: statusCode, data: data))
                
            case .failure(let err):
                print(err)
            }
        }
    }
    
    private func judegeSignIndata(status: Int, data: Data) -> NetworkResult<Any> {
        let decoder = JSONDecoder()
        guard let decodedData = try?
                decoder.decode(GenericResponse<SignInData>.self, from: data)
        else {
            return .pathErr
        }
        
        switch status {
        case 200:
            return .success(decodedData.data)
        case 400:
            return .requestErr(decodedData.message)
        case 500:
            return .serverErr
        default:
            return .pathErr
        }
    }
}

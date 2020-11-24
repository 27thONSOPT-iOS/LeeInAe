//
//  AuthService.swift
//  27th_iOS_assignment_week06
//
//  Created by inae Lee on 2020/11/24.
//

import Foundation
import Alamofire

struct AuthService {
    static let shared = AuthService()
    
    func signIn(email: String, password: String, completion: @escaping ((NetworkResult<Any>) -> (Void))) {
        let url = APIConstants.signInURL
        
        let header : HTTPHeaders = ["Content-Type" : "application/json"]
        let body: Parameters = ["email" : email, "password" : password]
        
        let dataRequest = AF.request(url, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header)
        
        dataRequest.responseData { (response) in
            switch response.result {
            case .success:
                guard let statusCode = response.response?.statusCode else {return}
                guard let data = response.value else { return }
                completion(judgeAuthData(status: statusCode, data: data))
                
            case .failure(let err):
                print(err)
                completion(.networkFail)
            }
        }
    }
    
    func signUp(email: String, password: String, name: String, completion: @escaping (NetworkResult<Any>) -> (Void)) {
        let url = APIConstants.signUpURL
        
        let header: HTTPHeaders = ["Content-Type": "application/json"]
        let body: Parameters = ["email": email, "password":password, "userName": name]
        
        let dataRequest = AF.request(url, method: .post, parameters: body, encoding: JSONEncoding.default, headers: header)
        
        dataRequest.responseData { (response) in
            switch response.result {
            case .success:
                guard let statusCode = response.response?.statusCode else {return}
                guard let data = response.value else {return}
                completion(judgeAuthData(status: statusCode, data: data))
                
            case .failure(let err):
                print(err)
                completion(.networkFail)
            }
        }
    }
    
    private func judgeAuthData(status: Int, data: Data) -> NetworkResult<Any>{
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(GenericResponse<AuthData>.self, from: data) else {
            return .pathErr
        }
        
        switch status {
        case 200:
            return .success(decodedData.data)
        case 400..<500:
            return .requestErr(decodedData.message)
        case 500:
            return .serverErr
        default:
            return .networkFail
        }
    }
}

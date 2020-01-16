//
//  UserModel.swift
//  Test-10-17
//
//  Created by 杉浦多可楽 on 2020/01/12.
//  Copyright © 2020 多可楽. All rights reserved.
//

import UIKit
import PGFramework
import FirebaseDatabase

class UserModel {
    var id: String?
    var name: String?
    var email: String?
}

extension UserModel {
    static func setparamater(request: UserModel) -> [String:Any]{
        var param = [String:Any]()
        if let id = request.id{param["id"] = id}
        if let name = request.name{param["name"] = name}
        if let email = request.email{param["email"] = email}
        return param
    }
    
    static func updata(request: UserModel, scuuess: @escaping() -> Void){
        let dbRef = Database.database().reference().child("users")
        let param = setparamater(request: request)
        dbRef.updateChildValues(param)
    }
}

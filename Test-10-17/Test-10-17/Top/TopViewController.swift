//
//  TopViewController.swift
//  Test-10-17
//
//  Created by 杉浦多可楽 on 2020/01/12.
//  Copyright © 2020 多可楽. All rights reserved.
//

import UIKit
import PGFramework


// MARK: - Property
class TopViewController: BaseViewController {
    var userModel = UserModel()
}

// MARK: - Life cycle
extension TopViewController {
    override func loadView() {
        super.loadView()
        userModel.id = "1"
        userModel.name = "テスト"
        userModel.email = "詳細"
        UserModel.updata(request: userModel) {
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

// MARK: - Protocol
extension TopViewController {
    
}

// MARK: - method
extension TopViewController {
    
}

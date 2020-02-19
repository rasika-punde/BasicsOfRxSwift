//
//  LogInViewModel.swift
//  BasicsOfRxSwift
//
//  Created by Punde, Rasika Nanasaheb on 08/02/20.
//  Copyright © 2020 Punde, Rasika Nanasaheb (US - Mumbai). All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa

enum ErrorType: Error {
    case wrongPassword
}

class LogInViewModel {
    
    func authenticateUser(username: String?, password: String?) {
    
    }
}








































































//lazy var isLoading = BehaviorSubject<Bool>(value: false)
//var username = BehaviorRelay<String>(value: "")
//var password = BehaviorRelay<String>(value: "")
//
//var signInStatus = PublishSubject<String>()


//isLoading.onNext(true)
//Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { (_) in
//    self.isLoading.onNext(false)
//
//    let password = self.password.value
//
//    if password == "123" {
//        self.signInStatus.onError(ErrorType.wrongPassword)
//    } else {
//        self.signInStatus.onNext("Success!!")
//    }
//}

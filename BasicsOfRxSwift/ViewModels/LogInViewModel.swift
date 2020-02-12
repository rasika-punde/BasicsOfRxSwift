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

class LogInViewModel {
    lazy var isLoading = BehaviorSubject<Bool>(value: false)
    var username = BehaviorRelay<String>(value: "")
    var password = BehaviorRelay<String>(value: "")
    
    
    
    func authenticateUser() {
        isLoading.onNext(true)
        Timer.scheduledTimer(withTimeInterval: 5, repeats: false) { (_) in
            self.isLoading.onNext(false)
            
        }
    }
}




































































//var showAlert = PublishSubject<(username: String, completion:() -> Void)>()

//self.showAlert.onNext((self.username.value, {
//    print("Yeayyyyyy!!!!!")
//}))

//
//  ViewController.swift
//  BasicsOfRxSwift
//
//  Created by Punde, Rasika Nanasaheb on 07/02/20.
//  Copyright © 2020 Punde, Rasika Nanasaheb (US - Mumbai). All rights reserved.
//

import UIKit
//import RxCocoa
import RxSwift

class LogInViewController: UIViewController {
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var loadingIndicator: UIActivityIndicatorView!
    @IBOutlet weak var signInStatusLabel: UILabel!
    
    private let viewModel = LogInViewModel()
    private let disposeBag = DisposeBag()

    // MARK: - Lifecycle method
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    // MARK: - View model binding method
    private func bindViewModel() {
        
    }
    
    // MARK: - User actions
    @IBAction func didPressSignInButton(_ sender: Any) {
        let username = self.usernameTextField.text
        let password = self.passwordTextField.text
        self.viewModel.authenticateUser(username: username, password: password)
    }
}














































//viewModel.isLoading.bind(to: self.loadingIndicator.rx.isAnimating).disposed(by: disposeBag)
//
//viewModel.isLoading.subscribe(onNext: { (isLoading) in
//    if isLoading {
//        self.signInButton.setTitle("", for: .normal)
//    } else {
//        self.signInButton.setTitle("Sign In", for: .normal)
//    }
//}, onError: {(_) in }).disposed(by: disposeBag)
//
//viewModel.username.asObservable().bind(to: usernameTextField.rx.text).disposed(by: disposeBag)
//usernameTextField.rx.text.orEmpty.bind(to:viewModel.username).disposed(by: disposeBag)
//
//viewModel.password.asObservable().bind(to: passwordTextField.rx.text).disposed(by: disposeBag)
//passwordTextField.rx.text.orEmpty.bind(to:viewModel.password).disposed(by: disposeBag)
//
//viewModel.signInStatus.subscribe(onNext: { (value) in
//    self.signInStatusLabel.text = value
//}, onError: { (error) in
//    self.signInStatusLabel.text = "Wrong!!!!"
//}).disposed(by: disposeBag)


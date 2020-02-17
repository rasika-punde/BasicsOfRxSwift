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
    
    private let viewModel = LogInViewModel()
    private let disposeBag = DisposeBag()

    // MARK: - Lifecycle method
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    // MARK: - View model binding method
    private func bindViewModel() {
        viewModel.isLoading.bind(to: self.loadingIndicator.rx.isAnimating).disposed(by: disposeBag)
        
        viewModel.isLoading.subscribe(onNext: { (isLoading) in
            if isLoading {
                self.signInButton.setTitle("", for: .normal)
            } else {
                self.signInButton.setTitle("Sign In", for: .normal)
            }
        }, onError: {(_) in }).disposed(by: disposeBag)
        
        viewModel.username.asObservable().bind(to: usernameTextField.rx.text).disposed(by: disposeBag)
        usernameTextField.rx.text.orEmpty.bind(to:viewModel.username).disposed(by: disposeBag)
        
        viewModel.password.asObservable().bind(to: passwordTextField.rx.text).disposed(by: disposeBag)
        passwordTextField.rx.text.orEmpty.bind(to:viewModel.password).disposed(by: disposeBag)
        
    }
    
    // MARK: - User actions
    @IBAction func didPressSignInButton(_ sender: Any) {
        self.viewModel.authenticateUser()
    }
    
    //Show Alert
    func showAlert(username: String, completion: @escaping (UIAlertAction) -> Void) {
        let alert = UIAlertController(title: "Alert", message: "Would you like to sign in \(username)?", preferredStyle: .alert)
        let yesAlertAction = UIAlertAction(title: "Yes!!!!", style: UIAlertAction.Style.default, handler: { action in
            completion(action)
        })
        alert.addAction(yesAlertAction)
        self.present(alert, animated: true, completion: nil)
    }
}














































//signInButton.rx.tap.bind {
//    self.viewModel.authenticateUser()
//}.disposed(by: disposeBag)

//viewModel.isLoading.map{!$0}.bind(to: self.signInButton.rx.isUserInteractionEnabled).disposed(by: disposeBag)

//viewModel.showAlert.subscribe(onNext: { (username, completion) in
//    self.showAlert(username: username) {_ in
//        completion()
//    }
//}, onError: {(_) in }).disposed(by: disposeBag)


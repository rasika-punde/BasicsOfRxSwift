//
//  WelcomeViewController.swift
//  BasicsOfRxSwift
//
//  Created by Punde, Rasika Nanasaheb on 08/02/20.
//  Copyright © 2020 Punde, Rasika Nanasaheb (US - Mumbai). All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class WelcomeViewController: UIViewController {
    @IBOutlet weak var welcomeLabel: UILabel!
    
    private let viewModel = WelcomeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
    }
    
    func bindViewModel() {
        
    }
}

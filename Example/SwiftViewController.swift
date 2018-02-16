//
//  SwiftViewController.swift
//  Example
//
//  Created by Blake Tsuzaki on 7/30/17.
//  Copyright © 2017 Modoki. All rights reserved.
//

import UIKit
import EasyLayout

class SwiftViewController: UIViewController {
    private let button = Button()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        view.addSubview(button)
        
        button.tintColor = .green
        button.buttonBottomEnabled = true
        
        activate(
            button.width == button.height * 0.8,
            button.height == view.height * 0.25,
            button.centerX == view,
            button.top == view.centerY
        )
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.button.shouldAnimatePulse = true
        }
    }
}

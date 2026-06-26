//
//  SplashViewController.swift
//  Reminder
//
//  Created by Jean Paul Rojas on 25/06/26.
//

import Foundation
import UIKit


class SplashViewController: UIViewController {
    let contentView = SplashView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupGesture()
        setup()
    }
    
    private func setup(){
        self.view.addSubview(contentView)
        setupConstraints()
    }
    
    private func setupConstraints(){
        NSLayoutConstraint.activate([
            contentView.topAnchor.constraint(equalTo: view.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        contentView.translatesAutoresizingMaskIntoConstraints = false
    }
    
    @objc
    private func showLoginBottomSheet() {
        let loginBottomSheet = LoginBottomSheetViewController()
        loginBottomSheet.modalPresentationStyle = .overCurrentContext
        loginBottomSheet.modalTransitionStyle = .crossDissolve
        self.present(loginBottomSheet, animated: false){
            loginBottomSheet.animateShow()
        }
    }
    
    private func setupGesture(){
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(showLoginBottomSheet))
        contentView.addGestureRecognizer(tapGesture)
    }
}


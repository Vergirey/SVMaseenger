//
//  FaceBookLoginViewController.swift
//  SVMaseenger
//
//  Created by Julia Kolbina on 26.08.17.
//  Copyright © 2017 com.SVMaseenger. All rights reserved.
//

import UIKit
import Firebase
import FacebookLogin
import FacebookCore

class FaceBookLoginViewController: UIViewController {
    
    let loginButton: LoginButton = {
        let lB = LoginButton(readPermissions: [ .publicProfile, .userFriends, .email ])
        lB.translatesAutoresizingMaskIntoConstraints = false
        return lB
    }()
    
    let nextButton: UIButton = {
        let button = UIButton(type: .system)
        button.backgroundColor = UIColor(red: 80/255, green: 101/255, blue: 161/255, alpha: 1)
        button.setTitle("NEXT", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        button.layer.cornerRadius = 5
        
        button.addTarget(self, action: #selector(tapNextButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(loginButton)
        view.addSubview(nextButton)
        
        setupLoginButton()
        setupNextButton()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setupLoginButton() {
        loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        loginButton.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -12).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func setupNextButton() {
        nextButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        nextButton.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 24).isActive = true
        nextButton.widthAnchor.constraint(equalTo: loginButton.widthAnchor).isActive = true
        nextButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
    
    func tapNextButton() {
        self.dismiss(animated: true, completion: nil)
        return
    }
}

//
//  ViewController.swift
//  SVMaseenger
//
//  Created by Julia Kolbina on 21.07.17.
//  Copyright © 2017 com.SVMaseenger. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let ref = FIRDatabase.database().reference(fromURL: "https://svmassenger.firebaseio.com/")
//        ref.updateChildValues(["someValue": 123123])
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }

    func handleLogout() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
}


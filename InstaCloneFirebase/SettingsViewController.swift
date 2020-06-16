//
//  SettingsViewController.swift
//  InstaCloneFirebase
//
//  Created by Sefa Çelik on 10.05.2020.
//  Copyright © 2020 Sefa Celik. All rights reserved.
//
import Firebase
import UIKit

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func logoutButton(_ sender: Any) {
        
        do{
            try Auth.auth().signOut()
            performSegue(withIdentifier: "toViewController", sender: nil)
        } catch {
            print("Error")
        }
        
    }
    

}

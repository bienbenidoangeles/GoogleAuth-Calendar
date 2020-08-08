//
//  MainViewController.swift
//  GoogleAuth+Calendar
//
//  Created by Bienbenido Angeles on 8/7/20.
//  Copyright © 2020 Bienbenido Angeles. All rights reserved.
//

import UIKit
import GoogleSignIn

class MainViewController: UIViewController {
    
    @IBOutlet weak var signOutButton: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func signOutButtonPressed(_ sender: UIButton) {
        GIDSignIn.sharedInstance().signOut()
        UIViewController.showViewController(storyBoardName: "Main", viewControllerId: "ViewController")
        
    }
    
    
    

}

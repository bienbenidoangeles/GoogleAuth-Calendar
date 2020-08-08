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
    
    
    @IBOutlet weak var welcomeLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray
        GIDSignIn.sharedInstance()?.shouldFetchBasicProfile = true
        welcomeLabel.text = "Welcome back \(GIDSignIn.sharedInstance()?.currentUser.profile.name ?? "no user found")"
        
 
    }
    
    @IBAction func signOutButtonPressed(_ sender: UIButton) {
        GIDSignIn.sharedInstance().signOut()
        UIViewController.showViewController(storyBoardName: "Main", viewControllerId: "ViewController")
        
    }
    
    
    
    
    

}

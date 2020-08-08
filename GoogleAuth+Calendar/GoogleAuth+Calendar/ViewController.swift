//
//  ViewController.swift
//  GoogleAuth+Calendar
//
//  Created by Bienbenido Angeles on 8/7/20.
//  Copyright © 2020 Bienbenido Angeles. All rights reserved.
//

import UIKit
import GoogleSignIn

class ViewController: UIViewController {

    @IBOutlet weak var signInButton: GIDSignInButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GIDSignIn.sharedInstance()?.restorePreviousSignIn()
        GIDSignIn.sharedInstance()?.presentingViewController = self

        // Automatically sign in the user.
        //GIDSignIn.sharedInstance()?.restorePreviousSignIn()
    }


}


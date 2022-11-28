//
//  LoginViewController.swift
//  Sepetim
//
//  Created by Şeyda Soylu on 28.11.2022.
//
import UIKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth
import GoogleSignIn
import GoogleSignInSwift

class LoginViewController: UIViewController , UITextFieldDelegate , UIApplicationDelegate  {
    
    
    
    
    @IBOutlet var loginButtonOutlet: UIButton!
    @IBOutlet var emailTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    let signInConfig = GIDConfiguration(clientID: "212843834036-tp6bu6in15dqhf5b1eim96j2v9fg5d4e.apps.googleusercontent.com")
    @IBAction func loginButton(_ sender: UIButton) {

          GIDSignIn.sharedInstance.signIn(
            with: signInConfig,
            presenting: self) { user, error in
              guard  error == nil else {
                return
              }
              // If sign in succeeded, display the app's main content View.
            }
          
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
}


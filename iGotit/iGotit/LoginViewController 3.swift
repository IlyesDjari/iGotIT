//
//  LoginViewController.swift
//  iGotit
//
//  Created by Ilyes Djari on 28/09/2022.
//

import UIKit
import FacebookLogin
import FBSDKLoginKit
import AuthenticationServices



class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBLoginButton()
        loginButton.frame = CGRect(x: 65, y: 675, width: 285, height: 50)
        loginButton.permissions = ["public_profile"]
        view.addSubview(loginButton)

    
        
        
        
        // Do any additional setup after loading the view.
    }
    
    
    //1056729263232-3e2qj7hfml4qbjns828ev3tlk28tfpi5.apps.googleusercontent.com

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    
    
}

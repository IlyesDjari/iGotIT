//
//  AppDelegate.swift
//  iGotit
//
//  Created by Ilyes Djari on 26/09/2022.
//

import UIKit
import FacebookCore
import FBSDKCoreKit
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
) -> Bool { ApplicationDelegate.shared.application(
    application,
    didFinishLaunchingWithOptions:
    launchOptions
)

    return true
}
      
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        return ApplicationDelegate.shared.application(
            app,
            open: url,
            options: options
        )
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
      if let error = error {
        print(error.localizedDescription)
        return
      } 
    }
    
}

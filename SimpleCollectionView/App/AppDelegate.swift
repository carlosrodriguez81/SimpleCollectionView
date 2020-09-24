//
//  AppDelegate.swift
//  SimpleCollectionView
//
//  Created by Carlos Rodriguez on 9/23/20.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]?) -> Bool {
        
        if #available(iOS 13, *) {
            // do only pure app launch stuff, not interface stuff
        } else {
            self.window = UIWindow()
            let viewController = ContactsCollectionView(collectionViewLayout: UICollectionViewFlowLayout())
            let navigationController = UINavigationController(rootViewController: viewController)
            self.window!.rootViewController = navigationController
            self.window!.makeKeyAndVisible()
        }
        return true
    }
}

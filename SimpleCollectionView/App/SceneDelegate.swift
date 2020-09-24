//
//  SceneDelegate.swift
//  SimpleCollectionView
//
//  Created by Carlos Rodriguez on 9/23/20.
//

import UIKit

@available(iOS 13.0, *)
class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window : UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        if let windowScene = scene as? UIWindowScene {
            self.window = UIWindow(windowScene: windowScene)
            let viewController = ContactsCollectionView(collectionViewLayout: UICollectionViewFlowLayout())
            let navigationController = UINavigationController(rootViewController: viewController)
            self.window!.rootViewController = navigationController
            self.window!.makeKeyAndVisible()
        }
    }
}

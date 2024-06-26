//
//  SceneDelegate.swift
//  Estudo_Coordinator
//
//  Created by Debora Rodrigues  on 25/06/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }

        let navController = UINavigationController()
        appCoordinator = AppCoordinator(navigationController: navController)
        appCoordinator?.start()

        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }
}

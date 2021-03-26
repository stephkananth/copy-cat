//
//  AppDelegate.swift
//  CopyCat
//
//  Created by Steph Ananth on 3/26/21.
//

import UIKit

@main
internal class AppDelegate: UIResponder, UIApplicationDelegate {
    internal var window: UIWindow?

    internal func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        let viewController = IngredientsViewController()
        let navigationController = UINavigationController()
        navigationController.pushViewController(viewController, animated: true)

        window = UIWindow()
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

        return window != nil
    }
}

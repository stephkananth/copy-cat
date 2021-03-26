//
//  AppDelegate.swift
//  CopyCat
//
//  Created by Steph Ananth on 3/26/21.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let viewController = UIViewController()
        let navigationController = UINavigationController()
        navigationController.pushViewController(viewController, animated: true)

        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

        return window != nil
    }
}

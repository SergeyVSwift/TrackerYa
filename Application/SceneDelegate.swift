//
//  SceneDelegate.swift
//  Tracker
//
//  Created by Сергей Ващенко on 01.08.23.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else {
            return
        }
        
        let tabBarController = UITabBarController()
        let trackersViewController = TrackersViewController()
        let temporaryVC = UIViewController()
        temporaryVC.view.backgroundColor = .systemBackground
        let navigationController = UINavigationController(rootViewController: trackersViewController)
        
        navigationController.tabBarItem = UITabBarItem(title: "Трекеры", image: UIImage(named: "TrackerBar"), selectedImage: nil)
        temporaryVC.tabBarItem = UITabBarItem(title: "Статистика", image: UIImage(named: "StatisticBar"), selectedImage: nil)
        tabBarController.viewControllers = [navigationController, temporaryVC]
        
        window = UIWindow(windowScene: windowScene)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
}


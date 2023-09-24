//
//  TabBarController.swift
//  Tracker
//
//  Created by Сергей Ващенко on 14.09.23.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tabBar.isTranslucent = false
        tabBar.backgroundColor = .white
        tabBar.tintColor = .blue
        
        let trackersViewController = TrackersViewController()
        let statisticsViewController = StatisticsViewController()
        
        trackersViewController.tabBarItem = UITabBarItem(
            title: "Трекеры",
            image: UIImage(named: "record.circle.fill"),
            selectedImage: nil
        )
        statisticsViewController.tabBarItem = UITabBarItem(
            title: "Статистика",
            image: UIImage(named: "hare.fill"),
            selectedImage: nil
        )
        
        let controllers = [trackersViewController, statisticsViewController]
        
        viewControllers = controllers
    }
}

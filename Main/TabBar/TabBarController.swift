//
//  TabBarController.swift
//  Tracker
//
//  Created by Сергей Ващенко on 14.09.23.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateTabBar()
    }
    
    private func generateTabBar() {
        tabBar.layer.borderWidth = 0.3
        tabBar.layer.borderColor = UIColor(red:0.0/255.0, green:0.0/255.0, blue:0.0/255.0, alpha:0.2).cgColor
        tabBar.clipsToBounds = true
    }
    
    class func configure() -> UIViewController {
        let trackersViewController = UINavigationController(rootViewController: CreateTrackerViewController())
        trackersViewController.tabBarItem.image = UIImage(named: "record.circle")
        let statisticsViewController = UINavigationController(rootViewController: StatisticViewController())
        statisticsViewController.tabBarItem.image = UIImage(named: "hare")
        statisticsViewController.title = "Статистика"
        let tabBarController = TabBarController()
        tabBarController.viewControllers = [trackersViewController, statisticsViewController]
       return tabBarController
    }
}

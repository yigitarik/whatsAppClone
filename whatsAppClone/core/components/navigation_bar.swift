//
//  application_bar.swift
//  whatsAppClone
//
//  Created by Yiğit ARİK on 3.08.2024.
//

import Foundation
import UIKit

class NavBar: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewControllers()
        setTabbarAppereance()
    }
    
    func setupViewControllers(){
        let updatesController = UpdatesViewController()
        let callsController = CallsViewController()
        let communitiesController = CommunitiesViewController()
        let chatsController = ChatsViewController()
        let settingsController = SettingsViewController()
        
        updatesController.tabBarItem = UITabBarItem(title: "Updates", image: nil, tag: 0)
        callsController.tabBarItem = UITabBarItem(title: "Calls", image: nil, tag: 1)
        communitiesController.tabBarItem = UITabBarItem(title: "Communities", image: nil, tag: 2)
        chatsController.tabBarItem = UITabBarItem(title: "Chats", image: nil, tag: 3)
        settingsController.tabBarItem = UITabBarItem(title: "Settings", image: nil, tag: 4)
        
        viewControllers = [updatesController,callsController,communitiesController,chatsController,settingsController]
    }
    
    func setTabbarAppereance(){
        self.tabBar.barTintColor = .blue
        self.tabBar.backgroundColor = UIColor(red: 244, green: 244, blue: 244, alpha: 1)
        // self.tabBar.layer.borderColor 
    }
}


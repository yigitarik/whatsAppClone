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
        
        updatesController.tabBarItem = UITabBarItem(title: "Updates", image: UIImage(named: "updates"), selectedImage: UIImage(named:"updatesActive"))
        callsController.tabBarItem = UITabBarItem(title: "Calls", image: UIImage(named: "calls"), selectedImage: UIImage(named: "callsActive"))
        communitiesController.tabBarItem = UITabBarItem(title: "Communities", image: UIImage(named: "communities"), selectedImage: UIImage(named: "communitiesActive"))
        chatsController.tabBarItem = UITabBarItem(title: "Chats", image: UIImage(named: "chats"), selectedImage: UIImage(named: "chatsActive"))
        settingsController.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(named: "settings"), selectedImage: UIImage(named: "settingsActive"))
        
        viewControllers = [updatesController,callsController,communitiesController,chatsController,settingsController]
    }
    
    func setTabbarAppereance(){
        self.tabBar.tintColor = .black
         
        self.tabBar.backgroundColor = UIColor(red: 244, green: 244, blue: 244, alpha: 1)
        // self.tabBar.layer.borderColor 
    }
}


//
//  NewAppDelegate.swift
//  Chapter03-TabBar
//
//  Created by JSMAC on 2020/01/07.
//  Copyright © 2020 JSPRO. All rights reserved.
//

import UIKit
@UIApplicationMain
class NewAppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        let tbC = UITabBarController()
        tbC.view.backgroundColor = UIColor.white
        
        self.window?.rootViewController = tbC
        
        let view01 = ViewController()
        let view02 = SecondViewController()
        let view03 = ThirdViewController()
        
        tbC.setViewControllers([view01, view02, view03], animated: false)
        view01.tabBarItem = UITabBarItem(title: "Calendar", image: UIImage(named: "calendar"), selectedImage: nil)
        view02.tabBarItem = UITabBarItem(title: "File", image: UIImage(named: "file-tree"), selectedImage: nil)
        view03.tabBarItem = UITabBarItem(title: "Photo", image:  UIImage(named: "photo"), selectedImage: nil)
        
        return true
    }
    
    
}

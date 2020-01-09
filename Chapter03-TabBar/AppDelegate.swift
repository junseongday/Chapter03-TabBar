//
//  AppDelegate.swift
//  Chapter03-TabBar
//
//  Created by JSMAC on 2020/01/05.
//  Copyright © 2020 JSPRO. All rights reserved.
//

import UIKit

class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        if let tbC = self.window?.rootViewController as? UITabBarController {
            if let tbItems = tbC.tabBar.items {
                tbItems[0].image = UIImage(named: "designbump.png")?.withRenderingMode(.alwaysOriginal)
                tbItems[0].title = "Calendar"
                
                tbItems[1].image = UIImage(named: "rss")?.withRenderingMode(.alwaysOriginal)
                tbItems[1].title = "file"
                
                tbItems[2].image = UIImage(named: "facebook.png")?.withRenderingMode(.alwaysOriginal)
                tbItems[2].title = "photo"
                
                for tbItem in tbItems {
                    let image = UIImage(named: "checkmark")?.withRenderingMode(.alwaysOriginal)
                    tbItem.selectedImage = image
                                        
//                    tbItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.gray], for: .disabled)
//                    tbItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.red], for: .selected)
//                    tbItem.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)], for: .normal)
                }
                let tbItemProxy = UITabBarItem.appearance();
                tbItemProxy.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.gray], for: .disabled)
                tbItemProxy.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.red], for: .selected)
                tbItemProxy.setTitleTextAttributes([NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)], for: .normal)
                
            }
            
//            tbC.tabBar.tintColor = UIColor.white
            
//            let bg = UIImage(named: "menubar-bg-mini")
//            tbC.tabBar.clipsToBounds = true
//            tbC.tabBar.backgroundImage = bg
            let tbProxy = UITabBar.appearance()
            tbProxy.tintColor = UIColor.white
            tbProxy.backgroundImage = UIImage(named: "menubar-bg-mini")
            
        }
        
        return true
    }



}


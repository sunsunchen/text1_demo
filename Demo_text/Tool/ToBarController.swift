//
//  ToBarController.swift
//  Demo_text
//
//  Created by sun~sun on 2018/9/10.
//  Copyright © 2018年 sun~sun. All rights reserved.
//

import UIKit

class ToBarController: NSObject {
    
    //返回tobar
    static func jumpToBarController() ->UITabBarController{
        
        let HomeViewController = GetViewController.getViewController(storyboardName: "Home", viewControllerName: "HomeViewController")
        
        
        let SecondViewController = GetViewController.getViewController(storyboardName: "Section", viewControllerName: "SecondViewController")
        
        
        let MeViewController = GetViewController.getViewController(storyboardName: "Me", viewControllerName: "MeViewController")
        
        
        let tabBarController = UITabBarController()
        
        tabBarController.tabBar.barTintColor = UIColor.white
        
        let tabbarline = UITabBar.appearance()
        tabbarline.shadowImage = UIImage()
        
        tabbarline.backgroundImage = ToBarController.initColorImage()
        
        tabBarController.viewControllers = [HomeViewController,SecondViewController,MeViewController]
        
        return tabBarController
        
    }
    
    
    static func initColorImage() -> UIImage{
        
        let rect = CGRect(x: 0,y: 0,width: 1,height: 1)
        UIGraphicsBeginImageContext(rect.size)
        let context = UIGraphicsGetCurrentContext()
        context!.setFillColor(UIColor(red:  246/255, green: 246/255, blue: 246/255, alpha: 0.8).cgColor)
        context!.fill(rect)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()

        return image!
    }

}



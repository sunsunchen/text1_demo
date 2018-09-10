//
//  GetViewController.swift
//  Demo_text
//
//  Created by sun~sun on 2018/9/10.
//  Copyright © 2018年 sun~sun. All rights reserved.
//

import UIKit

class GetViewController: NSObject {

    static func getViewController(storyboardName: String, viewControllerName: String) -> UIViewController {
        
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        
        return storyboard.instantiateViewController(withIdentifier: viewControllerName)
    }
    
    
}

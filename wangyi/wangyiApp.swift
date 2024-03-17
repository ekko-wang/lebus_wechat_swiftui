//
//  wangyiApp.swift
//  wangyi
//
//  Created by haoyu wang on 2024/2/20.
//

import SwiftUI

@main
struct wangyiApp: App {
    // 属性包装器
    @UIApplicationDelegateAdaptor private var appDelegate: Appdelegate
    var body: some Scene {
        WindowGroup {
            Home()
        }
    }
}

class Appdelegate: NSObject, UIApplicationDelegate {
    // 生命周期函数
    // 加载时触发，适用于一些通用配置
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        config()
        return true
    }
    
    private func config() {
        print(1)
    }
}

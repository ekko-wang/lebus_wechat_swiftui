//
//  Home.swift
//  wangyi
//
//  Created by haoyu wang on 2024/3/15.
//

import SwiftUI

struct Home: View {
    var body: some View {
        TabView {
            MessageList()
            Text("ttongun")
                .tabItem {
                    Image(systemName: "person.2.fill")
                    Text("通讯录")
                }
            Text("发现")
                .tabItem {
                    Image(systemName: "location.circle")
                    Text("发现")
                }
            Text("我")
                .tabItem {
                    Image(systemName: "person")
                    Text("我")
                }
        }
        
    }
}

#Preview {
    Home()
}

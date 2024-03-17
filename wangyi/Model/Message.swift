//
//  Message.swift
//  wangyi
//
//  Created by haoyu wang on 2024/2/27.
//

import Foundation

//数据model
struct Message: Identifiable {
    var id = UUID()
    let imgName: String
    let nickName: String
    let messageText: String
    let messageDate: String
}


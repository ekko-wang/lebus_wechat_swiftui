//
//  MessageList.swift
//  wangyi
//
//  Created by haoyu wang on 2024/2/20.
//

import SwiftUI

struct MessageList: View {
    var messages: [Message] = {
        var messages: [Message] = []
        for i in 1...20 {
            let message = Message(
                imgName: "head",
                nickName: "老马\(i)",
                messageText: "今天星期几234",
                messageDate: "2024-02-18"
            )
            messages.append(message)
        }
        return messages
    }()
    var body: some View {
        NavigationView{
            List(messages){ message in
                NavigationLink {
                    MessageDetail(title: message.nickName)
                } label: {
                    MessageRow(message: message)
                }
            }
            .listStyle(.plain)
            .navigationTitle("wechat")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                // 多个toolbar元素
                ToolbarItem(placement: .topBarLeading) {
                    Button() {
                        print(123)
                    } label: {
                        Image(systemName: "plus.circle").foregroundColor(.primary)
                    }.padding(10) // padding也可以触发点击事件，以便于用户点击
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    Button() {
                        print(123)
                    } label: {
                        Image(systemName: "plus.circle").foregroundColor(.primary)
                    }.padding(10) // padding也可以触发点击事件，以便于用户点击
                }
                

            }
        }
        
    }
}

#Preview {
    MessageList()
}

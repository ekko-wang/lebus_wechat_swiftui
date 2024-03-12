//
//  ContentView.swift
//  wangyi
//
//  Created by haoyu wang on 2024/2/20.
//

import SwiftUI

struct ContentView: View {
    var messages: [Message] = {
        var messages: [Message] = []
        for i in 1...20 {
            let message = Message(
                imgName: "head",
                nickName: "老马\(i)",
                messageText: "今天星期几23",
                messageDate: "2024-02-18"
            )
            messages.append(message)
        }
        return messages
    }()
    var body: some View {
        List(messages){ message in
            HStack(spacing:10) {
                Image(message.imgName)
                    .resizable()
                    //.aspectRatio(contentMode: .fill) // 直接填满frame
                    .scaledToFill() //同上
                    //.aspectRatio(contentMode: .fit)  // 自适应填充，保持纵横比
                    //.scaledToFit() // 同上
                    // 上面这些东西得写在frame之前才能正常生效
                    .frame(width:50,height:50, alignment: .top)
                    //.clipped() // 约等于overflow: hidden
                    .cornerRadius(5) //带了圆角之后会自动clipped，就可以不写上一行
                HStack(alignment:.top) {
                    VStack(alignment: .leading,spacing: 10){
                        Text(message.nickName)
                            .font(.system(size: 20))
                        Text(message.messageText)
                            .font(.system(size: 20))
                            .foregroundColor(.secondary)
                    }
                    Spacer()
                    Text(message.messageDate)
                        .font(.footnote)
                        .foregroundColor(.secondary)
                }
            }.listStyle(.plain)
        }
        
        
    }
}

#Preview {
    ContentView()
}

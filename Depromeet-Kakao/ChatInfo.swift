//
//  ChatInfo.swift
//  Depromeet-Kakao
//
//  Created by 양원채 on 7/6/24.
//

import SwiftUI

struct ChatInfo: View {
    let profileImg: String
    let name: String
    let content: String
    let time: String
    let unread: Int
    
    var body: some View {
        HStack {
            HStack {
                Image(profileImg)
                    .resizable()
                    .frame(width: 60, height: 60)
                    .cornerRadius(25)
                VStack(alignment: .leading) {
                    Text(name)
                        .font(.system(size: 18))
                        .padding(.bottom, 3)
                    Text(content)
                        .foregroundStyle(Color.gray)
                        .font(.system(size: 15))
                    
                }.padding(.leading, 10)
            }
            
            Spacer()
            
            VStack(alignment: .trailing) {
                Text(time)
                    .foregroundStyle(Color.gray)
                    .font(.system(size: 13))
                if unread > 0 {
                    ZStack {
                        Color.red
                            .frame(width: 20, height: 20)
                            .cornerRadius(50)
                        Text("\(unread)")
                            .font(.system(size: 10))
                            .foregroundStyle(Color.white)
                            .bold()
                    }
                } else {
                    ZStack {
                        Color.white
                            .frame(width: 20, height: 20)
                            .cornerRadius(50)
                    }
                }
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 5)
    }
}

#Preview() {
    ChatInfo(
        profileImg: "당황",
        name: "김도훈",
        content: "만나서 반가워",
        time: "09:10",
        unread: 10
    )
}

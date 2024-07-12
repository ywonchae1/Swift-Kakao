//
//  GroupChatInfo.swift
//  Depromeet-Kakao
//
//  Created by 양원채 on 7/12/24.
//

import SwiftUI

struct GroupChatInfo: View {
    let profileImg: [String]
    let name: String
    let content: String
    let count: Int
    let time: String
    let unread: Int
    
    var body: some View {
        HStack {
            HStack {
                if profileImg.count == 4 {
                    VStack {
                        HStack {
                            Image(profileImg[0])
                                .resizable()
                                .frame(width: 30, height: 30)
                                .cornerRadius(10)
                                .padding(.trailing, -3)
                            Image(profileImg[1])
                                .resizable()
                                .frame(width: 30, height: 30)
                                .cornerRadius(10)
                                .padding(.leading, -3)
                        }.padding(.bottom, -5)
                        HStack {
                            Image(profileImg[2])
                                .resizable()
                                .frame(width: 30, height: 30)
                                .cornerRadius(10)
                                .padding(.trailing, -3)
                            Image(profileImg[3])
                                .resizable()
                                .frame(width: 30, height: 30)
                                .cornerRadius(10)
                                .padding(.leading, -3)
                        }
                    }
                } else if profileImg.count == 1 {
                    Image(profileImg[0])
                        .resizable()
                        .frame(width: 70, height: 70)
                        .cornerRadius(28)
                }
                VStack(alignment: .leading) {
                    HStack(alignment: .center){
                        Text(name)
                            .font(.system(size: 18))
                        Text("\(count)")
                            .foregroundStyle(Color.gray)
                    }.padding(.bottom, 3)
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

#Preview {
    GroupChatInfo(
        profileImg: ["당황", "기쁨", "분노", "물"],
        name: "Spring은 한국말로 봄",
        content: "뭐라고 ㅋㅋㅋ?",
        count: 4,
        time: "7월 3일",
        unread: 4
    )
}

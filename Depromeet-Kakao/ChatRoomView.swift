//
//  ChatRoomView.swift
//  Depromeet-Kakao
//
//  Created by 양원채 on 7/12/24.
//

import SwiftUI

struct ChatRoomView: View {
    var body: some View {
        VStack {
            ChatTopView()
            ScrollView {
                ChatInfo(
                    profileImg: "당황",
                    name: "이주형",
                    content: "미앙...",
                    time: "09:10",
                    unread: 10
                )
                GroupChatInfo(
                    profileImg: ["당황", "기쁨", "분노", "물"],
                    name: "디프만 15기 2팀",
                    content: "Wow",
                    count: 11,
                    time: "7월 3일",
                    unread: 4
                )
                ChatInfo(
                    profileImg: "기쁨",
                    name: "엄마",
                    content: "미치것다 알겠어",
                    time: "10:13",
                    unread: 15
                )
                GroupChatInfo(
                    profileImg: ["spring"],
                    name: "Spring은 한국말로 봄",
                    content: "좋다",
                    count: 4,
                    time: "7월 3일",
                    unread: 4
                )
                ChatInfo(
                    profileImg: "따분",
                    name: "신민철오빠",
                    content: "땡큐입니다~",
                    time: "10:25",
                    unread: 0
                )
                ChatInfo(
                    profileImg: "불안",
                    name: "송건의오빠",
                    content: "가봅시당~ㅋㅋㅋ",
                    time: "7월 10일",
                    unread: 1
                )
                ChatInfo(
                    profileImg: "profile",
                    name: "장세영선생님",
                    content: "인생 파이팅..",
                    time: "7월 9일",
                    unread: 3
                )
                ChatInfo(
                    profileImg: "불",
                    name: "이우형오빠",
                    content: "👨‍🚀",
                    time: "7월 7일",
                    unread: 0
                )
                GroupChatInfo(
                    profileImg: ["profile", "profile", "profile", "profile"],
                    name: "난 괜찮아",
                    content: "우린 괜찮아 닝닝닝",
                    count: 19,
                    time: "7월 6일",
                    unread: 19
                )
                ChatInfo(
                    profileImg: "profile",
                    name: "이승은언니",
                    content: "https://localhost:3000",
                    time: "7월 6일",
                    unread: 0
                )
                GroupChatInfo(
                    profileImg: ["profile", "물", "불", "profile"],
                    name: "코람 FC",
                    content: "***2024년 07월 06일 토요일 축구일정 공지***",
                    count: 36,
                    time: "7월 4일",
                    unread: 45
                )
                ChatInfo(
                    profileImg: "부럽",
                    name: "김동호오빠",
                    content: "ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ",
                    time: "7월 3일",
                    unread: 0
                )
            }
        }
    }
}

private struct ChatTopView: View {
    var body: some View {
        HStack {
            Text("채팅")
                .font(.system(size: 30))
                .bold()
            
            Spacer()
            
            ForEach(ChatUtils.allCases, id: \.self) {
                Image(systemName: $0.icon)
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(.leading, 5)
            }
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 5)
    }
}

#Preview {
    ChatRoomView()
}

//
//  ContentView.swift
//  Depromeet-Kakao
//
//  Created by 양원채 on 6/28/24.
//

import SwiftUI

struct KakaoTalkFriendView: View {
    var body: some View {
        VStack {
            FriendTopView()
                .padding(.horizontal)
                .padding(.top)
            ScrollView {
                MyProfileRowView()
                    .padding(.horizontal)
                Divider()
                    .padding(.horizontal)
                
                HStack {
                    Text("업데이트한 프로필")
                        .font(.system(size: 15))
                        .foregroundStyle(Color.gray)
                    Text("7")
                        .font(.system(size: 15))
                        .foregroundStyle(Color.gray)
                    Spacer()
                    
                    Image(systemName: "chevron.down")
                        .resizable()
                        .frame(width: 12, height: 7)
                        .foregroundColor(Color.gray)
                }
                .padding(.vertical, 5)
                .padding(.horizontal)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(0..<10, id: \.self) { i in
                            if(i == 0) {
                                VStack {
                                    Image("profile")
                                    Text("양원채")
                                        .font(.system(size: 13))
                                }
                                .padding(.leading, 10)
                            } else if(i == 9) {
                                VStack {
                                    Image("profile")
                                    Text("양원채")
                                        .font(.system(size: 13))
                                }
                                .padding(.leading, 3)
                                .padding(.trailing, 10)
                            } else {
                                VStack {
                                    Image("profile")
                                    Text("양원채")
                                        .font(.system(size: 13))
                                }
                                .padding(.leading, 3)
                            }
                        }
                    }
                    .frame(maxHeight: .infinity)
                }
                .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                Divider()
                    .padding(.horizontal)
                
                HStack {
                    Text("친구")
                        .font(.system(size: 15))
                        .foregroundStyle(Color.gray)
                    Text("1515")
                        .font(.system(size: 15))
                        .foregroundStyle(Color.gray)
                    Spacer()
                    
                    Image(systemName: "chevron.down")
                        .resizable()
                        .frame(width: 12, height: 7)
                        .foregroundColor(Color.gray)
                }
                .padding(.vertical, 5)
                .padding(.horizontal)
                
                VStack {
                    ForEach(0..<1515, id: \.self) { i in
                        HStack {
                            Image("profile")
                            Text("양원채")
                            
                            Spacer()
                        }
                    }
                }
                .frame(maxHeight: .infinity)
                .padding(.horizontal)
            }
        }
    }
}

private struct FriendTopView: View {
    var body: some View {
        HStack {
            Text("친구")
                .font(.system(size: 30))
                .bold()
            
            Spacer()
            
            ForEach(FriendUtils.allCases, id: \.self) {
                if($0.icon == "music.note") {
                    Image(systemName: $0.icon)
                        .resizable()
                        .frame(width: 15, height: 25)
                        .padding(.leading, 5)
                } else {
                    Image(systemName: $0.icon)
                        .resizable()
                        .frame(width: 25, height: 25)
                        .padding(.leading, 5)
                }
            }
        }
    }
}

private struct MyProfileRowView: View {
    var body: some View {
        VStack {
            HStack {
                Image("profile")
                Text("양원채")
                    .bold()
                
                Spacer()
                
                RoundedRectangle(cornerRadius: 16)
                    .stroke(Color.gray, lineWidth: 1)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30)
                    .overlay {
                        HStack {
                            Text("멀티프로필")
                                .font(.system(size: 15))
                                .foregroundStyle(Color.gray)
                            Image(systemName: "plus")
                                .resizable()
                                .frame(width: 10, height: 10)
                                .foregroundColor(Color.gray)
                        }
                    }
            }
            .padding(.vertical, 5)
        }
    }
}

#Preview {
    KakaoTalkFriendView()
}

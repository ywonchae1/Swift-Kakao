//
//  ContentView.swift
//  Depromeet-Kakao
//
//  Created by 양원채 on 6/28/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("친구")
                    .font(.system(size: 30))
                    .bold()
                
                Spacer()
                
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(.leading, 5)
                Image(systemName: "person.badge.plus")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(.leading, 5)
                Image(systemName: "music.note")
                    .resizable()
                    .frame(width: 15, height: 25)
                    .padding(.leading, 5)
                Image(systemName: "gearshape")
                    .resizable()
                    .frame(width: 25, height: 25)
                    .padding(.leading, 5)
            }
            
            HStack {
                Image("profile")
                Text("양원채")
                    .bold()
                
                Spacer()
                
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(Color.gray, lineWidth: 1)
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30)
                    
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
            
            Divider()
            
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

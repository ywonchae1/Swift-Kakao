//
//  SampleTabView.swift
//  Depromeet-Kakao
//
//  Created by 양원채 on 7/5/24.
//

import SwiftUI

struct SampleTabView: View {
    var body: some View {
        TabView {
            ForEach(TabBarItem.allCases, id: \.self) { item in
                item.selectedView
                    .tabItem {
                        Image(systemName: item.icon)
                        Text(item.title)
                    }
            }
        }
        .accentColor(.black)
    }
}

#Preview {
    SampleTabView()
}

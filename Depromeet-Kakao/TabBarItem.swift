//
//  TabBarItem.swift
//  Depromeet-Kakao
//
//  Created by 양원채 on 7/5/24.
//

import Foundation
import SwiftUI

enum TabBarItem: CaseIterable {
    case friend
    case chat
    case openChat
    case shop
    case more
    
    var icon: String {
        switch self {
        case .friend: return "person"
        case .chat: return "message"
        case .openChat: return "quote.bubble"
        case .shop: return "bag"
        case .more: return "ellipsis"
        }
    }
    
    var title: String {
        switch self {
            case .friend: return "친구"
            case .chat: return "채팅"
            case .openChat: return "오픈채팅"
            case .shop: return "쇼핑"
            case .more: return "더보기"
        }
    }
    
    @ViewBuilder
    var selectedView: some View {
        switch self {
        case .friend:
            KakaoTalkFriendView()
        case .chat:
            ChatRoomView()
        case .openChat:
            Color.blue
        case .shop:
            Color.green
        case .more:
            Color.black
        }
    }
}

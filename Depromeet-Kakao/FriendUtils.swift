//
//  FriendUtils.swift
//  Depromeet-Kakao
//
//  Created by 양원채 on 7/2/24.
//

import Foundation

enum FriendUtils: CaseIterable {
    case detail
    case addFriend
    case music
    case setting
    
    var icon: String {
        switch self {
        case .detail: return "magnifyingglass"
        case .addFriend: return "person.badge.plus"
        case .music: return "music.note"
        case .setting: return "gearshape"
        }
    }
}

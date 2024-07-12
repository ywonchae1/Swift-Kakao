//
//  ChatUtils.swift
//  Depromeet-Kakao
//
//  Created by 양원채 on 7/12/24.
//

import Foundation

enum ChatUtils: CaseIterable {
    case detail
    case addChat
    case setting
    
    var icon: String {
        switch self {
        case .detail: return "magnifyingglass"
        case .addChat: return "bubble"
        case .setting: return "gearshape"
        }
    }
}

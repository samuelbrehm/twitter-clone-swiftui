//
//  Message.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 28/04/21.
//

import Foundation

struct MockMessage: Identifiable {
    let id: Int
    let imageName: String
    let messageText: String
    let isCurrentUser: Bool
}

let MOCK_MESSAGES: [MockMessage] = [
    .init(id: 0, imageName: "spiderman", messageText: "Hey What's up?", isCurrentUser: false),
    .init(id: 1, imageName: "batman", messageText: "Not much, you?", isCurrentUser: true),
    .init(id: 2, imageName: "batman", messageText: "How's the marvel universe?", isCurrentUser: true),
    .init(id: 3, imageName: "spiderman", messageText: "It's pretty good dude", isCurrentUser: false),
    .init(id: 4, imageName: "spiderman", messageText: "How's your battle with the Joker", isCurrentUser: false),
    .init(id: 5, imageName: "batman", messageText: "Not going so hot...", isCurrentUser: true),
]

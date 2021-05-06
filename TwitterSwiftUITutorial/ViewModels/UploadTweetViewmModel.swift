//
//  UploadTweetViewmModel.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 05/05/21.
//

import SwiftUI
import Firebase

class UploadTweetViewModel: ObservableObject {
    @Binding var isPresented: Bool
    
    init(isPresented: Binding<Bool>) {
        self._isPresented = isPresented
    }
    
    func uploadTweet(caption: String) {
        guard let user = AuthViewModel.shared.user else { return }
        let docRef = COLLECTION_TWEETS.document()
        
        let data: [String: Any] = [
            "uid": user.id,
            "caption": caption,
            "fullname": user.fullname,
            "timestamp": Timestamp(date: Date()),
            "username": user.username,
            "profileImageUrl": user.profileImageUrl,
            "id": docRef.documentID
        ]
        
//        docRef.setData(data, completion: completion)
        
        docRef.setData(data) { _ in
            self.isPresented = false
        }
    }
}

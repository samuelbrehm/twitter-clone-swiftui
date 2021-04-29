//
//  ProfileActionButtonView.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 29/04/21.
//

import SwiftUI

struct ProfileActionButtonView: View {
    let isCurrentUser: Bool
    
    var body: some View {
        if isCurrentUser {
            Button(action: {}, label: {
                Text("Edit Profile")
                    .frame(width: 360, height: 40)
                    .background(Color.blue.cornerRadius(20))
                    .foregroundColor(.white)
            })
        } else {
            HStack {
                Button(action: {}, label: {
                    Text("Follow")
                        .frame(width: 180, height: 40)
                        .background(Color.blue.cornerRadius(20))
                        .foregroundColor(.white)
                })
                
                Button(action: {}, label: {
                    Text("Message")
                        .frame(width: 180, height: 40)
                        .background(Color.purple.cornerRadius(20))
                        .foregroundColor(.white)
                })
            }
        }
        
    }
}

struct ProfileActionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileActionButtonView(isCurrentUser: false)
    }
}

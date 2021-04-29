//
//  FeedView.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 19/04/21.
//

import SwiftUI

struct FeedView: View {
    @State var isShowingTweetView = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                VStack {
                    ForEach(0..<100) { _ in
                        TweetCell()
                    }
                }
                .padding()
            }
            
            Button(action: {}, label: {
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 32, height: 32)
                    .padding()
            })
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .sheet(isPresented: $isShowingTweetView) {
            
            }
            
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

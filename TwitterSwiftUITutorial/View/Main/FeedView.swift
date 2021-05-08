//
//  FeedView.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 19/04/21.
//

import SwiftUI

struct FeedView: View {
    @State var isShowingTweetView = false
    @ObservedObject var viewModel = FeedViewModel()
    
    //    init() {
    //        self.viewModel.fetchTweets()
    //    }
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(viewModel.tweets) { tweet in
                        NavigationLink(destination: TweetDetailView(tweet: tweet)) {
                            TweetCell(tweet: tweet)
                        }
                    }
                }
                .padding()
            }
//            .onReceive(self.viewModel.$tweets) { _ in
//                self.viewModel.fetchTweets()
//            }
            
            Button(action: {
                isShowingTweetView.toggle()
            }, label: {
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
            //            .fullScreenCover(isPresented: $isShowingTweetView, onDismiss: {
            //                viewModel.fetchTweets()
            //            }, content: {
            //                NewTweetView(isPresented: $isShowingTweetView)
            //            })
            .fullScreenCover(isPresented: $isShowingTweetView) {
                NewTweetView(isPresented: $isShowingTweetView)
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

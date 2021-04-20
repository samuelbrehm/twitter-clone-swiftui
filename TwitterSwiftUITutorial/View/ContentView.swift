//
//  ContentView.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 19/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                    FeedView()
                    .tabItem {
                        Image(systemName: "house")
                        Text("Home")
                    }
                
                Text("Search")
                    .tabItem {
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                    }
                Text("Message")
                    .tabItem {
                        Image(systemName: "envelope")
                        Text("Message")
                    }
            } //: TABVIEW
            .navigationBarTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
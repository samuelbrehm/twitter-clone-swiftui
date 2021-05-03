//
//  ContentView.swift
//  TwitterSwiftUITutorial
//
//  Created by Samuel Brehm on 19/04/21.
//

import SwiftUI

struct ContentView: View {
//    @ObservedObject var viewModel = AuthViewModel()
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        Group {
            if viewModel.userSession != nil {
                NavigationView {
                    TabView {
                        FeedView()
                            .tabItem {
                                Image(systemName: "house")
                                Text("Home")
                            }
                        
                        SearchView()
                            .tabItem {
                                Image(systemName: "magnifyingglass")
                                Text("Search")
                            }
                        ConversationsView()
                            .tabItem {
                                Image(systemName: "envelope")
                                Text("Message")
                            }
                    } //: TABVIEW
                    .navigationBarTitle("Home")
                    .navigationBarTitleDisplayMode(.inline)
                }
            } else {
                LoginView()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(AuthViewModel())
    }
}

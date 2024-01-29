//
//  RedditView.swift
//  DesignRemakes
//
//  Created by Christopher Bell on 29/01/2024.
//

import SwiftUI

struct RedditView: View {
    
    @State private var selectedTab = 0
    
    var body: some View {
        
        TabView {
            HomeFeed()
                .tabItem {
                    Image(systemName: "house")
                }
                .tag(0)
            
            Text("Explore")
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                }
                .tag(0)
            
            Text("Plus")
                .tabItem {
                    Image(systemName: "plus")
                }
                .tag(0)
            
            Text("Messages")
                .tabItem {
                    Image(systemName: "text.bubble")
                }
                .tag(0)
            
            Text("Notifications")
                .tabItem {
                    Image(systemName: "bell")
                }
                .tag(0)
        }
    }
}

#Preview {
    RedditView()
}

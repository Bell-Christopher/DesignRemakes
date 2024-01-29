//
//  HomeFeed.swift
//  DesignRemakes
//
//  Created by Christopher Bell on 29/01/2024.
//

import SwiftUI

struct HomeFeed: View {
    
    @State var posts: [Post] = Post.preview
    
    var body: some View {
        
        VStack {
            VStack {
                searchBar
                
                HStack {
                    Text("News")
                    Spacer()
                    Text("Home")
                        .overlay(alignment: .bottom) {
                            Rectangle()
                                .fill(.blue)
                                .frame(height: 1)
                                .padding(.top)
                        }
                    
                    Spacer()
                    Text("Popular")
                    Spacer()
                    Text("Awarded")
                }
                .font(.title3)
                .padding()
            }
            
            ScrollView {
                ForEach(posts) { post in
                    VStack(alignment: .leading, spacing: 10) {
                        HStack {
                            Image(systemName: "house")
                                .symbolVariant(.circle)
                                .font(.title)
                            
                            VStack(alignment: .leading) {
                                Text("r/\(post.subreddit)")
                                Text("u/\(post.op) | \(post.age) | v.redd.it")
                            }
                            
                            Spacer()
                            
                            Image(systemName: "ellipsis")
                                .rotationEffect(.degrees(90))
                        }
                        .foregroundStyle(.secondary)
                        
                        Text(post.title)
                            .font(.headline)
                        
                        Text(post.description)
                            .foregroundStyle(Color.primary.opacity(0.85))
                        
                        HStack {
                            Group {
                                Image(systemName: "arrow.up")
                                Text(post.upvotes, format: .number)
                                Image(systemName: "arrow.down")
                            }
                            
                            Spacer()
                            
                            Group {
                                Image(systemName: "bubble.right")
                                Text(post.comments, format: .number)
                            }
                            
                            Spacer()
                            
                            Group {
                                Image(systemName: "square.and.arrow.up")
                                Text("Share")
                            }
                            
                            Spacer()
                            
                            Group {
                                Image(systemName: "gift")
                                Text("Award")
                            }
                        }
                    }
                    .padding(8)
                    .background(Color(.systemBackground))
                }
            }
            .background(Color.gray.opacity(0.2))
        }
    }
    
    private var searchBar: some View {
        
        HStack {
            Image(systemName: "person")
                .symbolVariant(.circle)
                .font(.title)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .foregroundStyle(.secondary)
                
                TextField("Search", text: .constant(""))
            }
            .padding(4)
            .background(RoundedRectangle(cornerRadius: 4).fill(.gray.opacity(0.2)))
            
            ZStack(alignment: .bottom) {
                Circle()
                    .fill(.yellow)
                    .frame(width: 25, height: 25)
                    .padding(.bottom, 8)
                
                Text("Free")
                    .padding(1)
                    .background(RoundedRectangle(cornerRadius: 8).fill(.orange))
            }
        }
        .padding()
    }
}

#Preview {
    HomeFeed()
}

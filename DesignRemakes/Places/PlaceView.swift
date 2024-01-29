//
//  PlaceView.swift
//  DesignRemakes
//
//  Created by Christopher Bell on 29/01/2024.
//

import SwiftUI

struct PlaceView: View {
    
    var body: some View {
        
        ScrollView {
            HStack {
                Image(systemName: "chevron.left")
                Spacer()
                Text("MAP")
                    .fontWeight(.semibold)
            }
            .font(.headline)
            .padding()
            
            HStack {
                Text("SEARCH")
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading)
            .padding(.top, 64)
            
            HStack {
                Image(systemName: "magnifyingglass")
                    .font(.title2)
            }
            .frame(maxWidth: .infinity)
            .padding()
            .background(RoundedRectangle(cornerRadius: 30).stroke(.gray))
            .padding()
            
            ScrollView(.horizontal) {
                HStack {
                    ActivityView(emoji: "🥾", title: "HIKING")
                    ActivityView(emoji: "🏄‍♂️", title: "SURFING")
                    ActivityView(emoji: "🏂", title: "SNOWBOARDING")
                    ActivityView(emoji: "⛷️", title: "SKIING")
                }
            }
            
            Text("POPULAR")
                .font(.headline)
                .foregroundStyle(.secondary)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
            
            LazyVStack {
                ForEach(placeImages, id: \.self) { imageURL in
                    AsyncImage(url: URL(string: imageURL)) { image in
                        image.resizable()
                            .scaledToFill()
                            .frame(height: 150)
                            .mask(RoundedRectangle(cornerRadius: 10))
                            .padding(.horizontal)
                            .padding(.vertical, 4)
                    } placeholder: {
                        ProgressView()
                    }
                }
            }
        }
    }
}

struct ActivityView: View {
    
    let emoji: String
    let title: String
    
    var body: some View {
        
        VStack {
            Text(emoji)
                .padding(8)
                .background(Circle().fill(.purple))
            Text(title)
        }
        .padding()
    }
}

let placeImages: [String] = [
    "https://images.unsplash.com/photo-1640195516607-b1307ea1e119",
    "https://images.unsplash.com/photo-1640195516482-aaab6c242863",
    "https://images.unsplash.com/photo-1640086696455-89f74a12b549",
    "https://images.unsplash.com/photo-1640195516487-0d86f118dac4",
    "https://images.unsplash.com/photo-1640051702482-66022fd487cf",
    "https://images.unsplash.com/photo-1640148791027-80af0f8b55da",
    "https://images.unsplash.com/photo-1640187458259-95c326b58154"
]

#Preview {
    PlaceView()
}

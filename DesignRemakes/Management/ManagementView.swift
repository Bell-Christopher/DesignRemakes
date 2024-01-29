//
//  ManagementView.swift
//  DesignRemakes
//
//  Created by Christopher Bell on 29/01/2024.
//

import SwiftUI

struct ManagementView: View {
    
    var body: some View {
        
        VStack(spacing: 32) {
            ScrollView {
                HStack {
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                        .background(RoundedRectangle(cornerRadius: 8).fill(.blue.opacity(0.7)))
                    
                    Text("Hi Amanda!")
                        .font(.largeTitle)
                    
                    Spacer()
                    
                    VStack(spacing: 16) {
                        Circle()
                            .frame(width: 6, height: 6)
                        
                        Circle()
                            .frame(width: 6, height: 6)
                    }
                }
                
                HStack(alignment: .top) {
                    Image(systemName: "star.fill")
                        .foregroundStyle(.white)
                        .padding(8)
                        .background(Circle().fill(.gray))
                    
                    VStack(alignment: .leading) {
                        Text("Go Premium!")
                            .font(.title2.weight(.bold))
                            .foregroundStyle(.white)
                        
                        Text("Get unlimited access to all our \nfeatures!")
                            .foregroundStyle(.gray)
                    }
                    
                    Spacer()
                }
                .padding(.bottom, 32)
                .padding()
                .frame(maxWidth: .infinity)
                .background(RoundedRectangle(cornerRadius: 32))
                .overlay(alignment: .bottomTrailing) {
                    Image(systemName: "arrow.right")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .foregroundStyle(.white)
                        .padding(12)
                        .background(RoundedRectangle(cornerRadius: 32).fill(.blue))
                }
                
                Text("Tasks")
                    .font(.largeTitle.weight(.bold))
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                LazyVGrid(columns: [GridItem(), GridItem()]) {
                    TileView(title: "Personal", color: .orange)
                    TileView(title: "Personal", color: .red)
                    TileView(title: "Personal", color: .blue)
                    
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "plus")
                            
                            Text("Add")
                        }
                        .font(.title2.weight(.bold))
                    }
                    .padding()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .frame(height: 200)
                    .background(RoundedRectangle(cornerRadius: 32)
                        .stroke(.gray, style: StrokeStyle(lineWidth: 3, dash: [5])))
                    .padding(2)
                }
            }
        }
        .padding()
        
        HStack {
            Image(systemName: "house.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundStyle(.blue.opacity(0.7))
            
            Spacer()
            
            Image(systemName: "person.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundStyle(.blue.opacity(0.7))
        }
        .padding(.horizontal, 64)
        .padding(.vertical, 32)
        .background(RoundedRectangle(cornerRadius: 32).fill(.white))
        .overlay(alignment: .top) {
            Image(systemName: "plus")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding()
                .foregroundStyle(.white)
                .background(RoundedRectangle(cornerRadius: 16))
                .offset(x: 0, y: -32)
        }
        .padding(.top, 64)
        .background(.gray.opacity(0.1))
        .ignoresSafeArea()
    }
}

struct TileView: View {
    
    let title: String
    let color: Color
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Image(systemName: "person.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
            
            Spacer()
            
            Text(title)
                .font(.title2.weight(.semibold))
            
            HStack {
                Text("3 left")
                    .foregroundStyle(.white.opacity(0.7))
                    .padding(8)
                    .background(Capsule().fill(self.color))
            }
        }
        .padding()
        .frame(maxWidth: .infinity)
        .frame(height: 200)
        .background(color.opacity(0.3))
        .clipShape(RoundedRectangle(cornerRadius: 32))
    }
}

#Preview {
    ManagementView()
}

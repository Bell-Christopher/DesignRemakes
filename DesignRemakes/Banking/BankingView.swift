//
//  BankingView.swift
//  DesignRemakes
//
//  Created by Christopher Bell on 28/01/2024.
//

import SwiftUI

struct BankingView: View {
    
    var body: some View {
        
        VStack {
            
            header
            
            Spacer()
            
            HStack(spacing: 8) {
                AccountView()
                AccountView()
            }
            .padding(.horizontal)
            
            Spacer()
            
            HStack(spacing: 8) {
                Text("Latest")
                    .font(.headline)
                
                Rectangle()
                    .fill(.gray)
                    .frame(height: 4)
            }
            .padding([.horizontal, .top])
            
            VStack {
                PersonView()
                PersonView()
                PersonView()
            }
            
            Spacer()
            
            Rectangle()
                .fill(.black)
                .frame(height: 60)
                .overlay(
                    Text("Continue")
                        .font(.title2)
                        .foregroundStyle(.white)
                )
                .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.gray.opacity(0.1))
    }
    
    var header: some View {
        
        HStack {
            Image(systemName: "plus.magnifyingglass")
                .foregroundStyle(.white)
                .padding(8)
                .background(.black, in: Circle())
            
            Spacer()
            
            Image(systemName: "circle.grid.2x2.fill")
        }
        .font(.largeTitle)
        .padding(.horizontal)
    }
}

struct AccountView: View {
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Circle()
                .trim(from: 0, to: 0.75)
                .stroke(.purple, lineWidth: 6)
                .frame(width: 60)
                .overlay {
                    Circle()
                        .stroke(.purple, lineWidth: 2)
                        .frame(width: 60)
                }
                .rotationEffect(.degrees(-90))
                .overlay {
                    Text("58%")
                        .fontWeight(.semibold)
                }
            
            Text("DIS Invest")
                .font(.headline)
                .foregroundStyle(.gray)
            
            Text("$6,000")
                .font(.title)
                .fontWeight(.semibold)
            
            Text("Virtual Assistent")
                .font(.subheadline)
                .foregroundStyle(.gray)
        }
        .padding()
        .frame(height: 200)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(.white)
    }
}

struct PersonView: View {
    
    var body: some View {
        
        HStack {
            
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 50, height: 50)
            
            VStack(alignment: .leading) {
                
                Text("Terry Mango")
                    .font(.headline)
                
                Text("Today")
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Image(systemName: "arrowtriangle.down.fill")
                .offset(y: 2)
        }
        .padding()
    }
}

#Preview {
    BankingView()
}

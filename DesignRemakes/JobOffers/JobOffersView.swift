//
//  JobOffersView.swift
//  DesignRemakes
//
//  Created by Christopher Bell on 29/01/2024.
//

import SwiftUI

struct JobOffersView: View {
    
    var body: some View {
        
        VStack {
            HStack {
                Image(systemName: "chevron.left")
                
                Spacer()
                
                Text("Apple")
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .rotationEffect(.degrees(90))
            }
            .foregroundStyle(.white)
            .padding(EdgeInsets(top: 40, leading: 16, bottom: 40, trailing: 16))
            
            VStack {
                ScrollView {
                    VStack(alignment: .center, spacing: 24) {
                        Text("Lead SwiftUI Engineer")
                            .font(.title)
                        
                        HStack {
                            Label("Apple", systemImage: "building.2")
                            Label("San Francisco", systemImage: "map")
                        }
                        .foregroundStyle(.secondary)
                        
                        HStack {
                            VStack(spacing: 8) {
                                Image(systemName: "book")
                                    .foregroundStyle(.secondary)
                                Text("Job Type")
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)
                                Text("Permanent work")
                                    .font(.headline)
                            }
                            .frame(maxWidth: .infinity)
                            
                            Divider()
                            
                            VStack(spacing: 8) {
                                Image(systemName: "dollarsign.circle")
                                    .foregroundStyle(.secondary)
                                Text("Salary")
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)
                                Text("$250k/Yr")
                                    .font(.headline)
                            }
                            .frame(maxWidth: .infinity)
                        }
                        .padding()
                        .background {
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(.secondary)
                        }
                        
                        VStack(alignment: .leading, spacing: 16) {
                            Text("Preferred qualifications")
                                .font(.headline)
                            
                            Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                                .foregroundStyle(.secondary)
                        }
                        
                        VStack(alignment: .leading, spacing: 16) {
                            Text("About the job")
                                .font(.headline)
                            
                            Text("Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.")
                                .foregroundStyle(.secondary)
                        }
                    }
                }
                .padding(.top, 48)
                .padding(.horizontal)
                
                Text("Apply for this job")
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.green, in: RoundedRectangle(cornerRadius: 16))
                    .padding(.bottom, 40)
                    .padding()
            }
            .background(.white, in: RoundedRectangle(cornerRadius: 32))
            .overlay(alignment: .top) {
                Image(systemName: "apple.logo")
                    .resizable()
                    .scaledToFit()
                    .padding(12)
                    .frame(width: 80, height: 80)
                    .foregroundStyle(.primary)
                    .background(.white, in: RoundedRectangle(cornerRadius: 16))
                    .offset(y: -40)
            }
            .offset(y: 40)
        }
        .background(.green)
    }
}

#Preview {
    JobOffersView()
}

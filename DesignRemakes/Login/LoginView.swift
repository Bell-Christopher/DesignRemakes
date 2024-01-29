//
//  LoginView.swift
//  DesignRemakes
//
//  Created by Christopher Bell on 29/01/2024.
//

import SwiftUI

struct LoginView: View {
    
    var body: some View {
        
        VStack {
            Spacer()
            
            RoundedRectangle(cornerRadius: 10)
                .fill(.blue)
                .frame(width: 100, height: 100)
            
            Group {
                Text("Login to ") + Text("beUpToDate").foregroundStyle(.blue)
            }
            .font(.title.weight(.semibold))
            
            Text("Trailer info at a glance")
                .fontWeight(.light)
            
            Spacer()
            
            VStack(spacing: 16) {
                InputField(title: "User name")
                InputField(title: "Organization")
                InputField(title: "Password")
                
                HStack {
                    Button {
                        
                    } label: {
                        HStack {
                            Image(systemName: "faceid")
                            Text("Face ID").bold()
                        }
                    }
                    .buttonStyle(RoundedButton(stroked: true))
                    
                    Button("Login") {}
                        .buttonStyle(RoundedButton(stroked: false))
                }
            }
            
            Spacer()
            
            Button("Forgot your password or username?") {}
                .foregroundStyle(.black)
        }
        .padding()
        .background(.gray.opacity(0.3))
    }
}

struct InputField: View {
    
    let title: String
    
    var body: some View {
        
        HStack {
            Text(title)
                .foregroundStyle(.secondary)
            
            TextField("", text: .constant(""))
        }
        .padding()
        .background(RoundedRectangle(cornerRadius: 16).fill(.white))
        .overlay(alignment: .trailing) {
            Button("X") {}
                .foregroundStyle(.black)
                .font(.body.weight(.semibold))
                .padding(.trailing)
        }
    }
}

struct RoundedButton: ButtonStyle {
    
    var stroked = true
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding(.vertical)
            .padding(.horizontal, 32)
            .frame(maxWidth: .infinity)
            .background {
                if stroked {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(.black)
                } else {
                    RoundedRectangle(cornerRadius: 10)
                        .fill(.black)
                }
            }
            .foregroundStyle(stroked ? .black : .white)
    }
}

#Preview {
    LoginView()
}

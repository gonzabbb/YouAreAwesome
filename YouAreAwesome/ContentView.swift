//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Abraham Gonzalez on 8/31/25.
//

import SwiftUI

struct ContentView: View {
    @State private var  message = ""
    @State private var image = ""
    var body: some View {
        
        
        
        VStack {
            
            Spacer()
            Image(systemName: image)
                .resizable()
                .scaledToFit()
                .foregroundStyle(Color.orange)
                .frame(width: 200, height: 200)
            
            
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            
            Spacer()
            
            
            Button("Press Me!") {
                let message1 = "You are Awesome!"
                let message2 = "You are Great!"
                let image1 = "hand.thumbsup"
                let image2 = "sun.max.fill"
                if message == message1 {
                    message = message2
                    image = image1
                }
                else {
                    message = message1
                    image = image2
                }
            }
            
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}

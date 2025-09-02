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
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius:30)
                .frame(width: 200, height: 200)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(image == "image0" ? .blue : .red)
            
            Spacer()
            
            
            Button("Press Me!") {
                let message1 = "You are Awesome!"
                let message2 = "You are Great!"
                let image1 = "image0"
                let image2 = "image1"
                
                message = message == message1 ? message2 : message1
                image = image == image1 ? image2 : image1
            }
            
            
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}

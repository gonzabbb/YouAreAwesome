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
    @State private var imageNumber = 0
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
                .foregroundStyle({
                    switch imageNumber % 2 {
                    case 1 : return Color.blue
                    default: return Color.red
                    }
                }())
            
            Spacer()
            
            
            Button("Show Message") {
                let message1 = "You are Awesome!"
                let message2 = "You are Great!"

                
                message = message == message1 ? message2 : message1
//                image = image == image1 ? image2 : image1
                image = "image\(imageNumber)"
                if imageNumber >= 9 {
                    imageNumber = 0
                }
                else {
                    imageNumber += 1
                }
                
                
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

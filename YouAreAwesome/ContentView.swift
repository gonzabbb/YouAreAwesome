//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Abraham Gonzalez on 8/31/25.
//

import SwiftUI

struct ContentView: View {
    @State private var  message = "I Am a Developer!"
    var body: some View {
        
        // VStack allows for all views inside of it to be stacked VERTICALLY
        // HStack allows for all views inside of it to be stacked HORIZONTALLY
        
        VStack {
            
            Spacer()
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(Color.orange)
                .frame(width: 200, height: 200)
            
            
            //Text() creates a Text interface known as a View. You can pass a String of characters between these parentheses
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            
            Spacer()
            
            HStack{
                Button("Awesome!") {
                    message = "Awesome!"
                }
                
                
                Button("Great!") {
                    message = "Great!"
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

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
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(Color.orange)
            //Text() creates a Text interface known as a View. You can pass a String of characters between these parentheses
            Text(message)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(Color.red)
            Button("Click Me!") {
                message = "Awesome"
            }
        }
        .padding()
        
    }
}

#Preview {
    ContentView()
}

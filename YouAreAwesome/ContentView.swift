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
    @State private var messageNumber = 0
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
                let message0 = "Yankees!"
                let message1 = "Red Sox!"
                let message2 = "Orioles!"
                let message3 = "Blue Jays!"
                let message4 = "Rays!"
                let message5 = "Mets!"
                let message6 = "Marlins!"
                let message7 = "Phillies!"
                let message8 = "Nationals!"
                let message9 = "Guardians!"
                
                let messageList = [message0,
                                   message1,
                                   message2,
                                   message3,
                                   message4,
                                   message5,
                                   message6,
                                   message7,
                                   message8,
                                   message9]
                
                message = messageList[messageNumber]
                messageNumber += 1
                if messageNumber == messageList.count {
                    messageNumber = 0
                }
                
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

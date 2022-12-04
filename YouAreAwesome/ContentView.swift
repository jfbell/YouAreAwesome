//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by James Bell on 26/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var myString = ""
    @State private var imageName = ""
    
    @State private var imageNumber = 0
    
    @State private var messageIndex = 0
    @State private var messages:[String] = ["namaste", "I'm Britney, Bitch", "some platitude", "fabulous"]
    
    @State private var count = 0
    
    
    
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(
                    AngularGradient(colors: [ .red, .orange, .yellow, .green, .blue, .indigo, .purple],
                                    center: UnitPoint(x: 0.3, y: 0.7),
                                    angle: Angle(degrees:100))
                )
                .ignoresSafeArea()
            
            VStack {
                Image(imageName)
                    .resizable()
                    .scaledToFit()
//                    .frame(width: 300 , height: 300)
                    .cornerRadius(30)
                    .padding()
                    .shadow(radius: 30, x: 5, y: 5)
                
                Spacer()
                Text(myString)
                    .font(.largeTitle)
                    .foregroundColor(.pink)
                    .fontWeight(.bold)
                    .padding()
                
                Spacer()
                
                Button("Show Message"){
                    messageIndex += 1
                    messageIndex = (messageIndex == messages.count ? 0 : messageIndex)
                    
                    myString = messages[messageIndex]
                    
                    
                    //TODO: loop imageNumber from 9 to 0
                    imageNumber += 1
                    imageNumber = (imageNumber > 9 ? 0 : imageNumber)
                    imageName = "image\(imageNumber)"
                    
//                    for item in arrayOfSomething {
//
//                    }
                    print(imageNumber)
                }
                .buttonStyle(.borderedProminent)
                
                Button("Append message"){
                    
                    messages.append("Another message number: \(count)")
                    count += 1
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

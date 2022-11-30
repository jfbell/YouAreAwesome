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

//    @State private var filled = 1.0
//    @State private var up = true
//
//    @State private var bgColor = Color("SkyBlue")
    
    
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
//                Image(systemName: "touchid", variableValue: filled)
//                    .resizable()
//                    .scaledToFit()
//                    .symbolRenderingMode(.multicolor)
//                //                    .background(Color.teal.opacity(0.5))
//                    .clipShape(Circle())
//                    .shadow(color: .gray, radius: 30, x: 10, y: 10)
//                //                    .foregroundColor(.pink)
//                    .padding(.bottom, 40)
//                    .padding(.horizontal,20)
                
                Group{
                    Text(myString)
//                    Text(String(filled))
                }
                .font(.largeTitle)
                .foregroundColor(.pink)
                .fontWeight(.bold)
                .padding()
                
                Spacer()
                
                Button("Show Message"){
                    let image1 = "image1"
                    let image2 = "image2"
                    
                    let message1 = "namaste"
                    let message2 = "I'm Britney, Bitch"
                    
//                    if up {
//                        filled = filled + 0.2
//                        if filled > 1 {
//                            up = false
//                        }
//                    } else {
//                        filled = filled - 0.2
//                        if filled < 0 {
//                            filled = 0
//                            up = true
//                        }
//                    }

                    imageName = (imageName == image2 ? image1 : image2)
                    myString = (myString == message1 ? message2 : message1)
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

//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by James Bell on 26/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var myString = "namaste"
    @State private var filled = 1.0
    @State private var up = true
    
    @State private var bgColor = Color("SkyBlue")
    
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
                Spacer()
                Image(systemName: "touchid", variableValue: filled)
                    .resizable()
                    .scaledToFit()
                    .symbolRenderingMode(.multicolor)
                //                    .background(Color.teal.opacity(0.5))
                    .clipShape(Circle())
                    .shadow(color: .gray, radius: 30, x: 10, y: 10)
                //                    .foregroundColor(.pink)
                    .padding(.bottom, 40)
                    .padding(.horizontal,20)
                
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
                    if up {
                        filled = filled + 0.2
                        if filled > 1 {
                            up = false
                        }
                    } else {
                        filled = filled - 0.2
                        if filled < 0 {
                            filled = 0
                            up = true
                        }
                    }

                    myString = (myString == "namaste" ? "I'm Britney, Bitch" : "namaste")
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

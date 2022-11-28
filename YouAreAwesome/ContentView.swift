//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by James Bell on 26/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var myString = "when you dont know who to call call those bastardes"
    @State private var filled = 1.0
    
    @State private var bgColor = Color("SkyBlue")
    
    var body: some View {
        ZStack {
            Color.cyan
                .ignoresSafeArea()
            
            VStack {
                Text("padding ")
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .foregroundColor(.gray)
                    .opacity(0.7)
                    .background {
                        Image(systemName: "swift")
                            .resizable()
                            .foregroundColor(.purple)
                            .scaledToFit()
                    }
                    .background(){
                        bgColor
    //                    Color("BostonCollegeGold")
                        .opacity(0.5)
                    }
                    .cornerRadius(15)
                    
                
                Spacer()
                Text(myString)
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                    .minimumScaleFactor(0.5)
                    .foregroundColor(Color.orange)
                    .multilineTextAlignment(.trailing)
                    .italic()
                    .kerning(2.3)
    //                .frame(width: .infinity, height: 150)
                    .frame(maxWidth: .infinity)
                    .background(.black)
                    .border(.yellow, width: 3)
                    .padding(14)
                
                Spacer()
                
                Gauge(value: filled, in: 0...10 ) {
                    Text("Fill me up")
                }.gaugeStyle(.accessoryCircular)
                .padding()
                
                HStack(spacing: 10){
                    Button("Fab"){
                        myString = "Fabulous thats you"
                        filled += 1
                        bgColor = Color.purple
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Button("Great"){
                        myString = "You are Great!"
                        filled = filled-1
                    }
                    .buttonStyle(.borderedProminent)
                    
                    Button("another button") {
                        myString = ""
                        filled = 5
                    }.buttonStyle(.borderedProminent)
                        .buttonBorderShape(.roundedRectangle(radius: 4))
                }.border(.purple, width: 5)
                    .padding()
                    .border(.blue)
                
                    .padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

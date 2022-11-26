//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by James Bell on 26/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "snowflake")
                    .resizable()
                    .scaledToFit()
                    .imageScale(.large)
                    .foregroundColor(.red)
                    .padding(10)
                    
                Image(systemName: "flame")
                    .resizable()
                    .scaledToFit()
                    .imageScale(.large)
                    .foregroundColor(.red)
                    .padding(20)

                .background(.blue)
            }
            Text("You are awesome!")
                .font(.largeTitle)
                .fontWeight(/*@START_MENU_TOKEN@*/.heavy/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color.orange)
                .italic()
                .padding(14)
                .kerning(2.3)
                .background(.black)
        }
        .padding()
        .background(.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

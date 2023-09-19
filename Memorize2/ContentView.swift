//
//  ContentView.swift
//  Memorize2
//
//  Created by Daniel Jesus Callisaya Hidalgo on 14/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        
        .padding()
        .foregroundColor(.orange)
    }
}

struct CardView: View{
    var isFaceUp: Bool = false
    var body: some View{
        ZStack {
            if isFaceUp{
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(lineWidth: 2 )
                
                Text("🌍").font(.largeTitle)
            }
            else {
                RoundedRectangle(cornerRadius: 12).foregroundColor(.orange)
            }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Swift Basic
//
//  Created by Jarvis on 09/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            
            Image("splash_image")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding()
                
            
            Spacer()
            
            Text("from")
            
            Text("Prajata Samanta")
                .font(.title3)
                .bold()
                .frame(height: 30.0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
    }
}

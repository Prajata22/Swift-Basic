//
//  ContentView.swift
//  Swift Basic
//
//  Created by Jarvis on 11/08/21.
//

import SwiftUI

struct ContentView: View {
    
    var fruits: [Fruit] = fruitsData
        
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item)
                    ) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 5)
                    }
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}

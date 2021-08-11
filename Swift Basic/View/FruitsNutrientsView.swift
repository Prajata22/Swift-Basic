//
//  FruitsNutrientsView.swift
//  Swift Basic
//
//  Created by Jarvis on 11/08/21.
//

import SwiftUI

struct FruitsNutrientsView: View {
    
    var fruit: Fruit
    
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein",
                               "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional value per 100 g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitsNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitsNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 400))
            .padding()
    }
}

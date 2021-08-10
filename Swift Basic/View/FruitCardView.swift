//
//  FruitCardView.swift
//  Swift Basic
//
//  Created by Jarvis on 10/08/21.
//

import SwiftUI

struct FruitCardView: View {
    
    var fruit: Fruit

    @State private var isAnimating: Bool = false
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(
                        color:
                            Color(
                                red: 0,
                                green: 0,
                                blue: 0,
                                opacity: 0.15
                            ),
                        radius: 8,
                        x: 6,
                        y: 8
                    )
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(
                        color:
                            Color(
                                red: 0,
                                green: 0,
                                blue: 0,
                                opacity: 0.15
                            ),
                        radius: 2,
                        x: 2,
                        y: 2
                    )
                
                Text(fruit.headline)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(
            minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
            minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,
            alignment: .center
        )
        .background(
            LinearGradient(
                gradient: Gradient(
                    colors: fruit.gradientColors
                ),
                startPoint: .top,
                endPoint: .bottom
            )
        )
        .cornerRadius(20)
        .padding(.horizontal, 20.0)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}

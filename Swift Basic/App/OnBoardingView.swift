//
//  OnBoardingView.swift
//  Swift Basic
//
//  Created by Jarvis on 10/08/21.
//

import SwiftUI

struct OnBoardingView: View {
    
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}

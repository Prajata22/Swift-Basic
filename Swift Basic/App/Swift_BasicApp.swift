//
//  Swift_BasicApp.swift
//  Swift Basic
//
//  Created by Jarvis on 09/08/21.
//

import SwiftUI

@main
struct Swift_BasicApp: App {
    
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if(isOnboarding) {
                OnBoardingView(fruits: fruitsData)
            } else {
                ContentView()
            }
        }
    }
}

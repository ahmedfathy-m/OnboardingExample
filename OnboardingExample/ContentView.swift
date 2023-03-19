//
//  ContentView.swift
//  OnboardingExample
//
//  Created by Ahmed Fathy on 19/03/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        OnboardingView(onboardingPages: OnboardingModel.all)
        OnboardingView(onboardingPages: OnboardingModel.all) {
            print("Completed")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

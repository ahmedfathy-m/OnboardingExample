//
//  ContentView.swift
//  OnboardingExample
//
//  Created by Ahmed Fathy on 19/03/2023.
//

import SwiftUI

struct ContentView: View {
    @State var time: Int = 0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        HStack (alignment: .center) {
            if time > 5 {
                OnboardingView(onboardingPages: OnboardingModel.all) {
                    print("Completed")
                }
            } else {
                GIFImage("pika")
                    .scaledToFit()
            }
        }.onReceive(timer) { _ in
            self.time += 1
        }.transition(.opacity)
            .animation(.spring(), value: time)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

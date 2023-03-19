//
//  OnboardingView.swift
//  OnboardingExample
//
//  Created by Ahmed Fathy on 19/03/2023.
//

import SwiftUI

struct OnboardingView: View {
    @State var currentPage: Int = 0
    var onboardingPages: [OnboardingModel]
    var body: some View {
        GeometryReader { proxy in
            VStack (spacing: 50) {
                Spacer()
                Image(onboardingPages[currentPage].image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: proxy.size.width)
                    .padding(.horizontal, 15)
                    .animation(.spring(), value: currentPage)
                Text(onboardingPages[currentPage].title)
                    .font(.system(size: 27))
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                    .animation(.spring(), value: currentPage)
                Text(onboardingPages[currentPage].body)
                    .font(.system(size: 14))
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                    .animation(.spring(), value: currentPage)
                Group {
                    if currentPage == onboardingPages.count - 1 {
                        Button {
                            print("Completed")
                        } label: {
                            ZStack {
                                Capsule(style: .continuous)
                                    .padding(.horizontal, 60)
                                    .frame(height: 55)
                                    .foregroundStyle(.linearGradient(colors: [Color("Main"), Color.cyan], startPoint: .leading, endPoint: .trailing))
                                Text("Learn More".capitalized)
                                    .font(.headline)
                                    .foregroundColor(.white)
                            }
                        }

                    } else {
                        PageControl(currentPage: $currentPage, totalPages: onboardingPages.count)
                    }
                }.transition(.opacity)
                    .animation(.spring(), value: currentPage)
                Spacer()
            }.gesture(
                DragGesture()
                    .onEnded { value in
                        if value.translation.width > 0 {
                            if currentPage != onboardingPages.count - 1 { currentPage += 1 }
                        } else if value.translation.width < 0 {
                            if currentPage != 0 { currentPage -= 1 }
                        }
                    }
            )
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(onboardingPages: OnboardingModel.all)
    }
}

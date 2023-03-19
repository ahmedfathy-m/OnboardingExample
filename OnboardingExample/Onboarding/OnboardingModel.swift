//
//  OnboardingModel.swift
//  OnboardingExample
//
//  Created by Ahmed Fathy on 19/03/2023.
//

import Foundation

struct OnboardingModel {
    let title: String
    let body: String
    let image: String
    
    static let all = [
        OnboardingModel(title: "Visual Design", body: "Lorem Ipsum Lorem Ipsum", image: "onboarding1"),
        OnboardingModel(title: "Programming", body: "Lorem Ipsum Lorem Ipsum", image: "onboarding2"),
        OnboardingModel(title: "People's Psychology", body: "Lorem Ipsum Lorem Ipsum", image: "onboarding3"),
        OnboardingModel(title: "Interactive Design", body: "Lorem Ipsum Lorem Ipsum", image: "onboarding4")
    ]
}

# Onboarding Screen Demo
![](https://i.imgur.com/a2jZEdc.jpg)

A simple reusable onboarding demo for SwiftUI

## Usage
```
OnboardingView(onboardingPages: OnboardingModel.all) {
    // On End Action
}
```
`Onboarding.all` is a shared sample variable consisting of 4 onboarding screens.

To Create an onboarding image model
```
OnboardingModel(title: "Visual Design", body: "Lorem Ipsum Lorem Ipsum", image: "onboarding1")
```
- `title`: Page Title (SystemFont-27-Bold)
- `body`: Page Content Text (SystemFont-14-Light)
- `image`: Main image asset name

Create as much as you need and add them to the array as you initialize the view

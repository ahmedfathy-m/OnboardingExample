//
//  PageControl.swift
//  OnboardingExample
//
//  Created by Ahmed Fathy on 19/03/2023.
//

import SwiftUI

struct PageControl: View {
    @Binding var currentPage: Int
    var totalPages: Int
    var body: some View {
        HStack(spacing: 15) {
            ForEach(0..<totalPages) { page in
                Button {
                    currentPage = page
                } label: {
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor((page == currentPage) ? Color.accentColor : .gray)
                }
            }
        }
    }
}

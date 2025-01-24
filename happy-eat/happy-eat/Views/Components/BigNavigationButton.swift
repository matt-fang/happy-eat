//
//  BigButtonView.swift
//  happy-eat
//
//  Created by Matthew Fang on 1/21/25.
//

import SwiftUI

struct BigNavigationButton: View {
    var destination: AnyView
    var label: String
    var icon: String
    
    var body: some View {
        NavigationLink(destination: destination) {
            Label(label, systemImage: icon)
                .foregroundStyle(.white)
        }
        .buttonStyle(.borderedProminent)
        .buttonBorderShape(.capsule)
        .foregroundStyle(.blue)
        .controlSize(.large)
        .padding(.vertical)
    }
}

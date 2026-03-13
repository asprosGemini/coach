//
//  HomeTitleView.swift
//  Coach
//
//  This view displays the main title on the home screen.
//  For now, it only shows the app name, but later it could
//  include branding or a subtitle if needed.
//

import SwiftUI

struct HomeTitleView: View {
    var body: some View {
        Text("Coach")
            .font(.largeTitle)
            .fontWeight(.bold)
    }
}

#Preview {
    HomeTitleView()
}

//
//  HomeIntroView.swift
//  Coach
//
//  This view displays the introductory text on the home screen.
//  For now, it explains the app's purpose and previews the future
//  Study Mode and Practice Mode directions.
//

import SwiftUI

struct HomeIntroView: View {
    var body: some View {
        VStack(spacing: 12) {
            
            Text("Practice technical and behavioral interview questions.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            Text("Study Mode and Practice Mode coming soon.")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
    }
}

#Preview {
    HomeIntroView()
}

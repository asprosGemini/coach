//
//  ContentView.swift
//  Coach
//
//  This is the main screen of the app.
//  For now it only displays a simple title and description.
//  Later this screen will become the "home screen" where the user
//  can choose Study Mode or Practice Mode.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        // Vertical layout container
        // VStack stacks UI elements from top to bottom
        VStack(spacing: 20) {
            
            // App title
            Text("Coach")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            // Short description explaining the purpose of the app
            Text("Practice technical and behavioral interview questions.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            // Placeholder message
            // This will later become buttons for Study Mode / Practice Mode
            Text("Interview training coming soon.")
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

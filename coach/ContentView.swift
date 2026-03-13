//
//  ContentView.swift
//  Coach
//
//  This is the main screen of the app.
//
//  For now, it shows the app title plus the first sample question
//  from the local question bank. This confirms that our UI is now
//  reading real app data instead of only hard-coded placeholder text.
//

import SwiftUI

struct ContentView: View {
    
    // Temporary sample question used to prove the UI can read app data.
    // Later, this screen will evolve into a real home screen with modes.
    let featuredQuestion = QuestionBank.sampleQuestions[0]
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text("Coach")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Practice technical and behavioral interview questions.")
                .font(.body)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            
            // Small section showing the first sample question from the question bank.
            VStack(spacing: 10) {
                Text("Featured Question")
                    .font(.headline)
                
                Text(featuredQuestion.category.displayName)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                Text(featuredQuestion.question)
                    .font(.body)
                    .multilineTextAlignment(.center)
            }
            .padding()
            
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

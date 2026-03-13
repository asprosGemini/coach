//
//  ContentView.swift
//  Coach
//
//  This is the main screen of the app.
//
//  For now, it shows the app title and a short preview list of sample
//  interview questions from the local question bank. This confirms that
//  the UI can render multiple pieces of real data.
//

import SwiftUI

struct ContentView: View {
    
    // Temporary sample data used to populate the first screen.
    // Later this home screen will evolve into Study Mode / Practice Mode.
    let questions = QuestionBank.sampleQuestions
    
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                
                Text("Coach")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                HomeIntroView()
                
                QuestionPreviewSectionView(questions: questions)
            }
            .padding(.top)
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}

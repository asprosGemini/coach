//
//  QuestionPreviewSectionView.swift
//  Coach
//
//  This view displays the "Question Preview" section on the home screen.
//  It includes a small list of sample interview questions and handles
//  navigation into the question detail screen.
//

import SwiftUI

struct QuestionPreviewSectionView: View {
    
    // Questions shown in the preview section
    let questions: [InterviewQuestion]
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            
            Text("Question Preview")
                .font(.headline)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
            List(questions.prefix(3)) { question in
                NavigationLink {
                    QuestionDetailView(question: question)
                } label: {
                    QuestionRowView(question: question)
                }
            }
            .listStyle(.plain)
        }
    }
}

#Preview {
    NavigationStack {
        QuestionPreviewSectionView(questions: QuestionBank.sampleQuestions)
    }
}

//
//  QuestionDetailView.swift
//  Coach
//
//  This screen shows the full details for one interview question.
//  For now, it displays the category, full question, and full answer.
//  Later, this can grow into a richer Study Mode detail screen.
//

import SwiftUI

struct QuestionDetailView: View {
    
    // The selected question passed in from the previous screen
    let question: InterviewQuestion
    
    var body: some View {
        VStack(spacing: 20) {
            
            Text(question.category.displayName)
                .font(.headline)
            
            Text(question.question)
                .font(.title3)
                .multilineTextAlignment(.center)
            
            Text(question.answer)
                .font(.body)
                .padding()
            
            Spacer()
        }
        .padding()
        .navigationTitle("Question")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    QuestionDetailView(
        question: QuestionBank.sampleQuestions[0]
    )
}

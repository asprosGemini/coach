//
//  QuestionRowView.swift
//  Coach
//
//  This reusable row view displays a single interview question in a list.
//  For now, it shows the category, question text, and a short answer preview.
//

import SwiftUI

struct QuestionRowView: View {
    
    // One interview question to display in the row
    let question: InterviewQuestion
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            
            Text(question.category.displayName)
                .font(.caption)
                .foregroundColor(.gray)
            
            Text(question.question)
                .font(.body)
            
            // Temporary answer preview so the row feels more like
            // a study tool than just a plain question list.
            Text(question.answer)
                .font(.footnote)
                .foregroundColor(.secondary)
                .lineLimit(2)
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    QuestionRowView(question: QuestionBank.sampleQuestions[0])
        .padding()
}

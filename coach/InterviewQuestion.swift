//
//  InterviewQuestion.swift
//  Coach
//
//  This file defines the data structure for an interview question.
//
//  Every interview question in the app will use this structure.
//  This model is meant for question-based study and practice modes.
//

import Foundation

// Defines the official question categories used in the app.
// Using an enum keeps category values consistent and avoids string typos.
enum QuestionCategory {
    case behavioralSTAR
    case introNarrative
    case logicReasoning
    case systemThinkingJudgment
    case technicalTroubleshooting
    
    // Human readable name for UI display
    var displayName: String {
        switch self {
        case .behavioralSTAR:
            return "Behavioral (STAR)"
        case .introNarrative:
            return "Intro / Narrative"
        case .logicReasoning:
            return "Logic & Reasoning"
        case .systemThinkingJudgment:
            return "System Thinking / Judgment"
        case .technicalTroubleshooting:
            return "Technical Troubleshooting"
        }
    }
}

// Represents one interview question in the app.
struct InterviewQuestion {
    
    // Unique ID so each question can be identified separately
    let id: UUID
    
    // The question prompt shown to the user
    let question: String
    
    // The category this question belongs to
    let category: QuestionCategory
    
    // The prepared or recommended answer for study/review
    let answer: String
}

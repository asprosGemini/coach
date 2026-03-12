//
//  QuestionBank.swift
//  Coach
//
//  This file stores a small starter list of interview questions.
//
//  For now, this is simple local sample data.
//  Later, this can grow into the full study/practice question bank.
//

import Foundation

struct QuestionBank {
    
    // Static sample questions that the app can use anywhere
    // without needing to create a QuestionBank object first.
    static let sampleQuestions: [InterviewQuestion] = [
        
        InterviewQuestion(
            id: UUID(),
            question: "Tell me about yourself.",
            category: .introNarrative,
            answer: "Give a concise summary of your background, highlight your most relevant experience, and connect it to the kind of role you want next."
        ),
        
        InterviewQuestion(
            id: UUID(),
            question: "Tell me about a time you solved a difficult customer or technical problem.",
            category: .behavioralSTAR,
            answer: "Use a STAR structure: explain the situation, the problem, the steps you took to investigate it, and the result."
        ),
        
        InterviewQuestion(
            id: UUID(),
            question: "How would you troubleshoot an issue that you cannot reproduce consistently?",
            category: .technicalTroubleshooting,
            answer: "Explain how you would narrow variables, gather logs, compare patterns, test hypotheses, and separate signal from noise."
        ),
        
        InterviewQuestion(
            id: UUID(),
            question: "Why are manhole covers round?",
            category: .logicReasoning,
            answer: "A strong answer explains that a round cover cannot fall through its own opening and is easier to move and align."
        ),
        
        InterviewQuestion(
            id: UUID(),
            question: "How do you decide whether an issue should be escalated to engineering?",
            category: .systemThinkingJudgment,
            answer: "Explain how you verify impact, attempt reproduction, research prior cases, rule out expected behavior, and escalate only with strong evidence."
        )
    ]
}

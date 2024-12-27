//
//  Transaction.swift
//  ExpenseTracker
//
//  Created by Артур Карачев on 26.12.24..
//

import SwiftUI

struct Transaction: Identifiable {
    let id: UUID = .init()
    
    var title: String
    var remarks: String
    var amount: Double
    var dateAdded: Date
    var category: String
    var tintColor: String
    
    init(title: String, remarks: String, amount: Double, dateAdded: Date, category: Category, tintColor: TintColor) {
        self.title = title
        self.remarks = remarks
        self.amount = amount
        self.dateAdded = dateAdded
        self.category = category.rawValue
        self.tintColor = tintColor.color
    }
    
    var color: Color {
        return tints.first(where: { $0.color == tintColor })?.value ?? appTint
    }
}

var sampleTransactions: [Transaction] = [
    .init(title: "Magic Keyboard", remarks: "Apple Product", amount: 123, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
    .init(title: "Magic Keyboard", remarks: "Apple Product", amount: 123, dateAdded: .now, category: .income, tintColor: tints.randomElement()!),
    .init(title: "Magic Keyboard", remarks: "Apple Product", amount: 123, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
    .init(title: "Magic Keyboard", remarks: "Apple Product", amount: 123, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!)
]

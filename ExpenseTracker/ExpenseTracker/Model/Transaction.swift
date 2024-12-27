//
//  Transaction.swift
//  ExpenseTracker
//
//  Created by Артур Карачев on 26.12.24..
//

import SwiftUI
import SwiftData

@Model
class Transaction {
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
    
    @Transient
    var color: Color {
        return tints.first(where: { $0.color == tintColor })?.value ?? appTint
    }
    
    @Transient
    var tint: TintColor? {
        return tints.first(where: { $0.color == tintColor })
    }
    
    @Transient
    var rawCategory: Category? {
        return Category.allCases.first(where: { category == $0.rawValue })
    }
}

//var sampleTransactions: [Transaction] = [
//    .init(title: "Magic Keyboard", remarks: "Apple Product", amount: 123, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
//    .init(title: "Magic Keyboard", remarks: "Apple Product", amount: 123, dateAdded: .now, category: .income, tintColor: tints.randomElement()!),
//    .init(title: "Magic Keyboard", remarks: "Apple Product", amount: 123, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!),
//    .init(title: "Magic Keyboard", remarks: "Apple Product", amount: 123, dateAdded: .now, category: .expense, tintColor: tints.randomElement()!)
//]

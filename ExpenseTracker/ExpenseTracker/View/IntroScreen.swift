//
//  IntroScreen.swift
//  ExpenseTracker
//
//  Created by Артур Карачев on 26.12.24..
//

import SwiftUI

struct IntroScreen: View {
    @AppStorage("isFirstTime") private var isFirstTime: Bool = true
    var body: some View {
        VStack(spacing: 15) {
            Text("What's new in the\nExpence Tracker")
                .font(.largeTitle.bold())
                .multilineTextAlignment(.center)
                .padding(.top, 65)
                .padding(.bottom, 35)
            
            VStack(alignment: .leading, spacing: 25) {
                PointView(symbol: "dollarsign", title: "Transactions", subtitle: "What's new in the expense tracker")
                PointView(symbol: "chart.bar.fill", title: "Visual Charts", subtitle: "What's new in the expense tracker")
                PointView(symbol: "magnifyingglass", title: "Transactions", subtitle: "What's new in the expense tracker")
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal, 25)
            
            Spacer(minLength: 10)
            
            Button(action: {
                isFirstTime = false
            }, label: {
                Text("Button")
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .frame(maxWidth: .infinity)
                    .padding(.vertical, 14)
                    .background(appTint.gradient, in: .rect(cornerRadius: 12))
                    .contentShape(.rect)
            })
        }
        .padding(15)
    }
    
    @ViewBuilder
    func PointView(symbol: String, title: String, subtitle: String) -> some View {
        HStack(spacing: 20) {
            Image(systemName: symbol)
                .font(.largeTitle)
                .foregroundStyle(appTint.gradient)
                .frame(width: 45)
            
            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .font(.title3)
                    .fontWeight(.semibold)
                Text(subtitle)
                    .foregroundStyle(.gray)
            }
        }
    }
}

#Preview {
    IntroScreen()
}

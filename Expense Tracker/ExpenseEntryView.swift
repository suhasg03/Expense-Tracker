//
//  ExpenseEntryView.swift
//  Expense Tracker
//
//  Created by Suhas G on 15/08/24.
//

import SwiftUI

struct ExpenseEntryView: View {
    var body: some View {
        HStack(alignment: .center) {
            Image(systemName: "fork.knife.circle.fill")
                .frame(width: 40, height: 40)
                .background(LinearGradient(colors: [Color.white.opacity(0.7), Color.gray], startPoint: .topLeading, endPoint: .bottomTrailing))
                .clipShape(RoundedRectangle(cornerRadius: 5.0))
                .foregroundStyle(Color.accentColor)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Breakfast")
                    .foregroundStyle(Color.white)
                    .font(.system(size: 17.0))
                Text("02 Dec 2020")
                    .foregroundStyle(Color.gray.opacity(0.5))
                    .font(.system(size: 12.0))
            }
            Spacer()
            Text("$ 10")
                .foregroundStyle(Color.white)
                .font(.system(size: 17.0))
        }
        .padding(.bottom, 10)
    }
}

#Preview {
    ExpenseEntryView()
}

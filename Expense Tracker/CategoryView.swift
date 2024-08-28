//
//  CategoryView.swift
//  Expense Tracker
//
//  Created by Suhas G on 15/08/24.
//

import SwiftUI

struct CategoryView: View {
    
    private var imageIconName = ""
    private var imageName = ""
    private var price = ""
    
    init(imageIconName: String = "", imageName: String = "", price: String = "") {
        self.imageIconName = imageIconName
        self.imageName = imageName
        self.price = price
    }
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 8) {
                Image(systemName: self.imageIconName)
                    .frame(width: 40, height: 40)
                    .background(LinearGradient(colors: [Color.white.opacity(0.7), Color.gray], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .clipShape(RoundedRectangle(cornerRadius: 5.0))
                    .foregroundStyle(Color.accentColor)
                
                Text(self.imageName)
                Text("$ \(self.price)")
            }
            .padding(10)
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width / 2 - 20, height: 150)
        .background(LinearGradient(colors: [Color.gray.opacity(0.4), Color.gray], startPoint: .topLeading, endPoint: .bottomTrailing))
        .clipShape(RoundedRectangle(cornerRadius: 10.0))
    }
}

#Preview {
    CategoryView(imageIconName: "stethoscope", imageName: "Medical", price: "100")
}

//
//  ContentView.swift
//  Expense Tracker
//
//  Created by Suhas G on 15/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color.black.ignoresSafeArea()
                ScrollView {
                    
                    // Profile photo, Name and settings logo
                    HStack {
                        Image(systemName: "person.crop.circle.fill")
                            .foregroundStyle(Color.white)
                            .font(.largeTitle)
                        Text("Hello Zoro!")
                            .foregroundStyle(Color.white)
                        Spacer()
                        Image(systemName: "gearshape.fill")
                            .foregroundStyle(Color.white)
                            .font(.headline)
                    }
                    .frame(maxWidth: .infinity)
                    
                    // Total Expenses View
                    HStack {
                        VStack {
                            Text("Total Expenses")
                                .foregroundStyle(Color.white)
                            Text("$ 4,124")
                                .foregroundStyle(Color.white)
                                .font(.largeTitle)
                        }
                        Spacer()
                        HStack {
                            Text("Month")
                                .foregroundStyle(Color.white)
                                .font(.system(size: 14.0))
                            Image(systemName: "chevron.down")
                                .foregroundStyle(Color.white)
                                .font(.system(size: 12.0))
                        }
                        .padding(8.0)
                        .background(Color.gray.opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 5.0))
                        
                    }
                    .padding(20)
                    .background(LinearGradient(colors: [Color.orange.opacity(0.9), Color.orange.opacity(0.8), Color.orange], startPoint: .top, endPoint: .bottom))
                    .clipShape(RoundedRectangle(cornerRadius: 15))
                    .padding(.top, 20)
                    
                    // Categories header
                    Text("Categories")
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.top, 10)
                        .padding(.bottom, 10)
                    
                    // 4 categories in Grid Style
                    HStack {
                        CategoryView(imageIconName: "stethoscope", imageName: "Medical", price: "100")
                            .padding(.trailing, 10)
                        CategoryView(imageIconName: "cart.fill", imageName: "Shopping", price: "2000")
                    }
                    .padding(.bottom, 20)
                    HStack {
                        CategoryView(imageIconName: "fork.knife.circle.fill", imageName: "Food", price: "240")
                            .padding(.trailing, 10)
                        CategoryView(imageIconName: "doc.fill", imageName: "Others", price: "2,132")
                    }
                    .padding(.bottom, 20)
                    
                    
                    // Latest Entries header with View all
                    HStack {
                        Text("Latest Entries")
                            .foregroundStyle(Color.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.top, 10)
                            .padding(.bottom, 10)
                        Spacer()
                        NavigationLink {
                            AllEntriesView()
                        } label: {
                            Text("View All")
                                .foregroundStyle(Color.white)
                                .frame(maxWidth: .infinity, alignment: .trailing)
                                .padding(.top, 10)
                                .padding(.bottom, 10)
                        }
                    }
                    
                    // List 5 transactions
                    ExpenseEntryView()
                    ExpenseEntryView()
                    ExpenseEntryView()
                    ExpenseEntryView()
                    ExpenseEntryView()
                }
                .background(Color.black)
                .padding(.horizontal, 10)
            }
            
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  Swift100Day35Challenge
//
//  Created by Mark Santoro on 1/15/25.
//

import SwiftUI



struct ContentView: View {
    
    @State private var selectTable = 1
    @State private var tipPercentage = 20
    @State private var numQuestions = 5
    @State private var multiplier = Int.random(in: 1...12)
    let questionCount = [5,10,15,20]
    
    
    var body: some View {
        NavigationStack{
            
            Form{
                VStack {
                    
                    Section("Which times table would you like?"){
                        Stepper("\(selectTable) times table", value: $selectTable, in: 1...12)
                        
                        
                    }
                    
                    Spacer()
                    
                    Section("How many questions would you like?"){
                        
                        Picker("Number of questions", selection: $numQuestions) {
                            ForEach(questionCount, id: \.self) {
                                //    ForEach(0..<101, id: \.self) {
                                Text($0, format: .number)
                            }
                        }
                        .pickerStyle(.segmented)
                    }
                    
                    Spacer()
                    HStack{
                        Section("How much is"){
                            TextField("Amount", value: $selectTable, format: .number)
                                .padding(.horizontal, 58)
                        }
                        
                    }
                    HStack{
                        Section{
                            Text("Times")
                        }
                        Section{
                            TextField("Amount", value: $multiplier, format: .number)
                                .padding(.horizontal, 110)
                            
                        }
                        
                        
                    }
                
                        
                }
            }
            .navigationTitle("Test Your Times Table")
            .padding(.top, 50)
        }
        
        
    }
}

#Preview {
    ContentView()
}

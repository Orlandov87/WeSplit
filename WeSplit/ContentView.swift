//
//  ContentView.swift
//  WeSplit
//
//  Created by Orlando Vargas on 10/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var checkAmount = "0.00"
    @State var numberOfPeople = 1
    @State var tipPercentage = 1;
    @State var tipPercentages: [Int] = [5, 10, 15, 20]
    
    var body: some View {
        
        NavigationView {
            Form {
                Section {
                    TextField("Amount", text: $checkAmount)
                        .keyboardType(.decimalPad)
                    Picker("Number of People", selection: $numberOfPeople) {
                        ForEach(2 ..< 100) {
                            Text("\($0) people")
                        }
                    }
                }
                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0 ..< tipPercentages.count) {
                            Text("\(self.tipPercentages[$0])%")
                        }
                    }
                }
                Section {
                    Text("$\(checkAmount)")
                }
            }
            .navigationTitle("WeSplit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

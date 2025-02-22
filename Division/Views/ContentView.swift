//
//  ContentView.swift
//  Division
//
//  Created by Haowen Chen on 2025-02-22.
//

import SwiftUI

struct ContentView: View {
    
    @State var viewModel = DivisionViewModel()
    
    var body: some View {
        VStack {
            Spacer()
            if let division = viewModel.division {
                
                // Show the provided base, exponent, and result
                // in an arrangement that looks the same as how
                // we write a power on paper in math class
                
             
                
                HStack{
                    Text("\(division.dividend.formatted())")
                        .font(.system(size: 40))
                    Text("/")
                        .font(.system(size: 20))
                    Text("\(division.divisor)")
                        .font(.system(size: 40))
                    Text("=")
                    Text("\(division.quotient) R \(division.remainder)")
                        .font(.system(size: 40))
                }
                
                
                
                
            } else {
                
                // Show a message indicating that we are
                // awaiting reasonable input
                ContentUnavailableView(
                    "Unable to evaluate the result",
                    systemImage: "gear.badge.questionmark",
                    description: Text(viewModel.recoverySuggestion)
                )
                .frame(height: 300)
            }
            
            // INPUT
            TextField("Dividend", text: $viewModel.providedDividend)
                .textFieldStyle(.roundedBorder)
            
            TextField("Divisior", text: $viewModel.providedDivsor)
                .textFieldStyle(.roundedBorder)
            
            // Extra space at bottom
            Spacer()
        }
    }
    
}

#Preview {
    ContentView()
}

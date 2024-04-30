//
//  ContentView.swift
//  OnboardingScreen
//
//  Created by Ashraf Hatia on 27/04/24.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("currentPage") var currentPage = 1
    
    var body: some View {
        //totalPages = 3
        if currentPage > 3 {
            Home()
        }
        else{
            OnBoradingScreen()
        }
    }
}

#Preview {
    ContentView()
}

//Home Screen
struct Home: View {
    var body: some View {
        VStack {
            Text("Welcome to HomeScreen")
                .font(.title)
                .fontWeight(.heavy)
                .padding()
            
            Text("Ashraf hatia")
                .font(.body)
                .fontWeight(.medium)
            Text("Software Developer")
                .font(.caption)
                .fontWeight(.medium)
            
        }
    }
}

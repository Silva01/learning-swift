//
//  ContentView.swift
//  appleTeste
//
//  Created by Daniel Silva on 28/10/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selected = "Baseball"
    
    @State private var id = 1
    
    private var activity: Activity = Activity()
    
    var colors: [Color] = [.blue, .cyan, .gray, .green, .indigo, .mint, .orange, .pink, .purple, .red]
    
    var body: some View {
        VStack {
            Text("Why not try...").font(.largeTitle.bold())
            
            Spacer()
            
            VStack {
                Circle()
                    .fill(colors.randomElement() ?? .blue)
                    .padding()
                    .overlay(Image(systemName:"figure.\(activity.getActivitySelected().lowercased())")
                        .font(.system(size: 144)).foregroundColor(.white))
                
                Text("\(activity.getActivitySelected())!").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            .transition(.slide)
            .id(id)
            
            Spacer()
            
            Button("Try Again") {
                withAnimation(.easeInOut(duration: 1)) {
                    activity.modifyActivityRandom()
                    id += 1
                }
            }.buttonStyle(.borderedProminent)
        }
        
        
    }
}

#Preview {
    ContentView()
}

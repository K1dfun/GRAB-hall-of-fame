//
//  ContentView.swift
//  GRAB HUB
//
//  Created by Jack Carlisle on 15/11/2024.
//

import SwiftUI

struct ContentView: View {
    
    var GRAB: [GRAB] = GRABHUB.GRABlinks
    
    var body: some View {
        NavigationView {
            

                List(GRAB, id: \.id) { grab in
                    HStack {
                        
                        
                        Image(grab.Imagename)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 70)
                            .cornerRadius(10)
                            .shadow(radius: 10)
                        
                        VStack(alignment: .leading, spacing: 5){
                        Text(grab.Name)
                            .fontWeight(.bold)
                            .lineLimit(2)
                            .minimumScaleFactor(0.5)
                            
                        
                        Text(grab.Description)
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                        Link(destination: grab.url, label:{
                           Image(systemName: "square.and.arrow.up")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 20, height: 20)
                        })
                    }
                .navigationTitle("GRAB Links")
                
            }
        }
        Text("Built by K1dfun")
                .font(.system(size: 40, weight: .light, design: .default))
    }
}
#Preview {
    ContentView()
}

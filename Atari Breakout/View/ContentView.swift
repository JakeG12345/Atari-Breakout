//
//  ContentView.swift
//  Atari Breakout
//
//  Created by Jake Glick on 9/6/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = BreakoutModel()
    
    var body: some View {
        
        
        VStack {
            List (model.breakout) { r in
                
                VStack {
                    Text(r.name) 
                        .font(.title)
                        .padding(5)
                    Text(r.cuisine)
                }
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

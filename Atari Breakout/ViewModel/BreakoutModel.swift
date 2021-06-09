//
//  BreakoutModel.swift
//  Atari Breakout
//
//  Created by Jake Glick on 9/6/21.
//

import Foundation

class BreakoutModel: ObservableObject {
    
    @Published var breakout = [Breakout]()
    
    init() {
        
        self.breakout = DataService.getLocalData()
        
    }
    
}

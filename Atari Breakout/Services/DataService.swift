//
//  DataService.swift
//  Atari Breakout
//
//  Created by Jake Glick on 9/6/21.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Breakout] {
        
        let pathString = Bundle.main.path(forResource: "breakout", ofType: "json")
        
        guard pathString != nil else {
            return [Breakout]()
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                
                let breakoutData = try decoder.decode([Breakout].self, from: data)
                
                for r in breakoutData {
                    
                    r.id = UUID()
                    
                }
                
                return breakoutData
                
            }
            
            catch {
                print(error)
            }
           
        }
        catch {
            print(error)
        }
            
        return [Breakout]()
            
    }
    
}

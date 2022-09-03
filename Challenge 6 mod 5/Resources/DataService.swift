//
//  DataService.swift
//  Challenge 6 mod 5
//
//  Created by user on 2022-09-02.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Video] {
       
         // Parse local json file
         
         //Get a url path to the JSON file
         
         let pathString = Bundle.main.path(forResource: "Data", ofType: "json")
         
         // Check if pathString is not nil, otherwise ...
         
         guard pathString != nil else {
             return [Video]()
         }
         
         //Create a url object
         let url = URL(fileURLWithPath: pathString!)
         
         do {
             //Create a data object
             let data = try Data(contentsOf: url)
             
             //Decode the data with a JSON decoder
             
             let decoder = JSONDecoder()
             
             do {
                 let videoData = try decoder.decode([Video].self, from: data)
                 
                 //Add unique IDs
                 
                 for v in videoData {
                     v.id = UUID()
                     
                   
                     }
                 
                 //Return the recipes
                 return videoData
             }
             catch {
                 //error with parsing JSON
                 print (error)
             }
         
         }
         catch {
             //error with getting date
             print (error)
         }
     
         return [Video]()
         
     }
     
    
    
    
    
    
    
    
    
    
    
}

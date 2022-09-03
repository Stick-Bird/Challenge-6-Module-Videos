//
//  ContentView.swift
//  Challenge 6 mod 5
//
//  Created by user on 2022-09-02.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var model : VideoModel
    
    
    var body: some View {
        
        VStack (alignment: .leading, spacing: 20){
            
            Rectangle ()
                .aspectRatio(CGSize (width: 335, height: 200), contentMode: .fit)
            
            //MARK: Video
            
            //Place video link GITHUB 
            
            
            ScrollView {
                
                Text ("Description")
                    .fontWeight(.bold)
                    .padding()
                    .font(.largeTitle)
                    .padding()
                
                
                //MARK: JSON File Description
                
            }
        }
        
        
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  Service.swift
//  Challenge 6 mod 5
//
//  Created by user on 2022-09-02.
//

import Foundation

class VideoModel: ObservableObject {
    
    @Published var videos = [Video]()
    
    init() {
      
        self.videos = DataService.getLocalData()
    }
}
